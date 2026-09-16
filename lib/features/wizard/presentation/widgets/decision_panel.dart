import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/router/routes.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../shared/models/architecture_state.dart';
import '../../../../shared/models/decision.dart';
import '../../../../shared/models/knowledge_bundle.dart';
import '../../../../shared/widgets/app_controls.dart';
import '../../../../shared/widgets/option_card.dart';
import '../../domain/decision_engine.dart';
import '../../domain/wizard_navigation.dart';
import '../../domain/wizard_providers.dart';
import 'architecture_panel.dart';

class DecisionPanel extends ConsumerWidget {
  const DecisionPanel({super.key, required this.bundle, this.onOpenInsight});

  final KnowledgeBundle bundle;
  final VoidCallback? onOpenInsight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tokens = context.tokens;
    final architecture = ref.watch(wizardControllerProvider);
    final languageCode = ref.watch(localeControllerProvider).languageCode;
    final controller = ref.read(wizardControllerProvider.notifier);
    final engine = DecisionEngine(bundle);
    final nav = WizardNavigation(engine);
    final decision = nav.currentDecision(architecture);
    final ranked = engine.rank(
      decision: decision,
      answers: architecture.answers,
      languageCode: languageCode,
    );
    final optionIds = [for (final item in ranked) item.option.id];
    final width = MediaQuery.sizeOf(context).width;
    final currentPreview =
        architecture.previewedOptionId ??
        architecture.selectedOptionId ??
        optionIds.firstOrNull;
    final continueEnabled = controller.continueEnabled(bundle);

    return OptionListShortcuts(
      optionIds: optionIds,
      currentId: currentPreview,
      onMove: controller.preview,
      onSelect: () {
        final id = currentPreview;
        if (id != null) {
          controller.select(bundle, id);
        }
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          width >= 1100 ? 44 : 24,
          36,
          width >= 1100 ? 44 : 24,
          28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppEyebrowText(decision.crumb.resolve(languageCode)),
            const SizedBox(height: 8),
            Text(
              decision.question.resolve(languageCode),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                height: 1.15,
                letterSpacing: -0.6,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              decision.blurb.resolve(languageCode),
              style: TextStyle(color: tokens.muted, fontSize: 16, height: 1.55),
            ),
            const SizedBox(height: 8),
            Text(
              decision.selection == SelectionMode.multiple
                  ? l10n.selectMultiple
                  : l10n.selectSingle,
              style: TextStyle(
                color: tokens.muted,
                fontSize: 13,
                fontFamily: 'monospace',
              ),
            ),
            const SizedBox(height: 28),
            Expanded(
              child: MouseRegion(
                onExit: (_) => controller.restorePreview(),
                child: ListView.separated(
                  itemCount: ranked.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return _cardFor(
                      ranked[index],
                      decision,
                      architecture,
                      languageCode,
                      controller,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              children: [
                Text(
                  l10n.decisionIndex(
                    nav.currentIndex(architecture) + 1,
                    nav.visible(architecture).length,
                  ),
                  style: TextStyle(
                    color: tokens.muted,
                    fontSize: 12,
                    fontFamily: 'monospace',
                  ),
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.end,
                  children: [
                    if (onOpenInsight != null)
                      AppButton(
                        label: l10n.insightTab,
                        variant: AppButtonVariant.ghost,
                        onPressed: onOpenInsight,
                      ),
                    AppButton(
                      label: l10n.back,
                      variant: AppButtonVariant.ghost,
                      enabled: !nav.isFirst(architecture),
                      onPressed: () => controller.back(bundle),
                    ),
                    AppButton(
                      label: l10n.skip,
                      variant: AppButtonVariant.secondary,
                      onPressed: () {
                        if (controller.skip(bundle)) {
                          const ReviewRoute().go(context);
                        }
                      },
                    ),
                    AppButton(
                      label: l10n.continueLabel,
                      arrow: true,
                      enabled: continueEnabled,
                      onPressed: continueEnabled
                          ? () {
                              if (controller.commitAndContinue(bundle)) {
                                const ReviewRoute().go(context);
                              }
                            }
                          : null,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardFor(
    RankedOption item,
    Decision decision,
    ArchitectureState architecture,
    String languageCode,
    WizardController controller,
  ) {
    final option = item.option;
    final selected = decision.selection == SelectionMode.multiple
        ? architecture.selectedOptionIds.contains(option.id)
        : architecture.selectedOptionId == option.id;
    return OptionCard(
      title: option.name.resolve(languageCode),
      summary: option.summary.resolve(languageCode),
      tags: option.tags.resolve(languageCode),
      selected: selected,
      previewed: architecture.previewedOptionId == option.id,
      multiple: decision.selection == SelectionMode.multiple,
      onPreview: () => controller.preview(option.id),
      onSelect: () => controller.select(bundle, option.id),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/router/routes.dart';
import '../../../app/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/models/architecture_state.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../../../shared/widgets/app_controls.dart';
import '../../export/domain/architecture_markdown_generator.dart';
import '../../export/presentation/export_dialog.dart';
import '../../wizard/domain/decision_engine.dart';
import '../../wizard/domain/wizard_providers.dart';
import '../../wizard/presentation/widgets/wizard_top_nav.dart';

class ReviewScreen extends ConsumerWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bundleAsync = ref.watch(knowledgeBundleProvider);
    return bundleAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) => Scaffold(body: Center(child: Text('$error'))),
      data: (bundle) {
        final l10n = AppLocalizations.of(context);
        final tokens = context.tokens;
        final architecture = ref.watch(wizardControllerProvider);
        final languageCode = ref.watch(localeControllerProvider).languageCode;
        final engine = DecisionEngine(bundle);
        final visibleIds = {
          for (final decision in engine.visibleDecisions(architecture.answers))
            decision.id,
        };
        return Scaffold(
          body: Column(
            children: [
              const WizardTopNav(reviewActive: true),
              Divider(height: 1, color: tokens.border),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(48, 40, 48, 64),
                  children: [
                    Text(
                      l10n.reviewEyebrow.toUpperCase(),
                      style: TextStyle(
                        color: tokens.muted,
                        fontSize: 11,
                        letterSpacing: 0.88,
                        fontFamily: 'monospace',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.reviewTitle,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.7,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      l10n.reviewLead,
                      style: TextStyle(color: tokens.muted, fontSize: 16),
                    ),
                    const SizedBox(height: 32),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final columns = constraints.maxWidth >= 1100
                            ? 3
                            : constraints.maxWidth >= 920
                            ? 2
                            : 1;
                        return GridView.count(
                          crossAxisCount: columns,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 1.35,
                          children: [
                            for (final group in bundle.flow.groups)
                              _ReviewCard(
                                title: group.title.resolve(languageCode),
                                editLabel: l10n.edit,
                                onEdit: () {
                                  final jumpId = group.decisionIds.firstWhere(
                                    visibleIds.contains,
                                    orElse: () => group.decisionIds.first,
                                  );
                                  ref
                                      .read(wizardControllerProvider.notifier)
                                      .jumpTo(bundle, jumpId);
                                  const WizardRoute().go(context);
                                },
                                children: _reviewLines(
                                  bundle: bundle,
                                  groupDecisionIds: group.decisionIds,
                                  visibleIds: visibleIds,
                                  architecture: architecture,
                                  languageCode: languageCode,
                                  l10n: l10n,
                                  tokens: tokens,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 560),
                        child: Column(
                          children: [
                            Text(
                              l10n.reviewCtaTitle,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              l10n.reviewCtaLead,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: tokens.muted),
                            ),
                            const SizedBox(height: 20),
                            AppButton(
                              label: l10n.generate,
                              onPressed: () {
                                final markdown =
                                    const ArchitectureMarkdownGenerator()
                                        .generate(
                                          bundle: bundle,
                                          state: architecture,
                                          languageCode: languageCode,
                                        );
                                showExportDialog(context, markdown: markdown);
                              },
                            ),
                            const SizedBox(height: 12),
                            AppButton(
                              label: l10n.backDecisions,
                              variant: AppButtonVariant.secondary,
                              onPressed: () => const WizardRoute().go(context),
                            ),
                            TextButton(
                              onPressed: () {
                                ref
                                    .read(wizardControllerProvider.notifier)
                                    .reset();
                                const WizardRoute().go(context);
                              },
                              child: Text(
                                l10n.restart,
                                style: TextStyle(color: tokens.muted),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    required this.title,
    required this.editLabel,
    required this.onEdit,
    required this.children,
  });

  final String title;
  final String editLabel;
  final VoidCallback onEdit;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: tokens.surface,
        border: Border.all(color: tokens.border),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              AppButton(
                label: editLabel,
                variant: AppButtonVariant.ghost,
                onPressed: onEdit,
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}

List<Widget> _reviewLines({
  required KnowledgeBundle bundle,
  required List<String> groupDecisionIds,
  required Set<String> visibleIds,
  required ArchitectureState architecture,
  required String languageCode,
  required AppLocalizations l10n,
  required AppTokens tokens,
}) {
  final widgets = <Widget>[];
  for (final id in groupDecisionIds) {
    if (!visibleIds.contains(id) && !architecture.answers.containsKey(id)) {
      continue;
    }
    final decision = bundle.flow.decisionById(id);
    final answer = architecture.answers[id];
    if (answer == null) {
      widgets
        ..add(
          Text(
            l10n.undecided,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        )
        ..add(
          Text(
            l10n.reviewPending,
            style: TextStyle(color: tokens.muted, fontSize: 13),
          ),
        );
      continue;
    }
    for (final optionId in answer.optionIds) {
      final option = decision.options.firstWhere((item) => item.id == optionId);
      widgets
        ..add(
          Text(
            option.name.resolve(languageCode),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        )
        ..add(
          Text(
            option.reason.resolve(languageCode),
            style: TextStyle(color: tokens.muted, fontSize: 13),
          ),
        );
    }
  }
  return widgets;
}

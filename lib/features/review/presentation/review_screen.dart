import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/router/routes.dart';
import '../../../app/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../../../shared/widgets/app_controls.dart';
import '../../../shared/widgets/app_icons.dart';
import '../../export/domain/architecture_markdown_generator.dart';
import '../../export/presentation/export_dialog.dart';
import '../../wizard/domain/wizard_providers.dart';
import '../../wizard/presentation/widgets/wizard_top_nav.dart';
import '../domain/review_lineup.dart';

class ReviewScreen extends ConsumerWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bundleAsync = ref.watch(knowledgeBundleProvider);
    return bundleAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) => Scaffold(body: Center(child: Text('$error'))),
      data: (bundle) => _ReviewStage(bundle: bundle),
    );
  }
}

class _ReviewStage extends ConsumerWidget {
  const _ReviewStage({required this.bundle});

  final KnowledgeBundle bundle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tokens = context.tokens;
    final architecture = ref.watch(wizardControllerProvider);
    final languageCode = ref.watch(localeControllerProvider).languageCode;
    final lineup = ReviewLineup.from(
      bundle: bundle,
      state: architecture,
      languageCode: languageCode,
      pendingLabel: l10n.undecided,
    );

    void edit(String decisionId) {
      ref.read(wizardControllerProvider.notifier).jumpTo(bundle, decisionId);
      const WizardRoute().go(context);
    }

    return Scaffold(
      body: Column(
        children: [
          const WizardTopNav(reviewActive: true),
          Divider(height: 1, color: tokens.border),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
              itemCount: lineup.rows.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        const SizedBox(height: 4),
                        Text(
                          l10n.reviewTitle,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.3,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          l10n.reviewLead,
                          style: TextStyle(
                            color: tokens.muted,
                            fontSize: 13,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                final row = lineup.rows[index - 1];
                final previous = index > 1 ? lineup.rows[index - 2] : null;
                return _DecisionRow(
                  row: row,
                  showGroup:
                      previous == null || previous.groupId != row.groupId,
                  editLabel: l10n.editNamed(row.category),
                  onEdit: () => edit(row.decisionId),
                );
              },
            ),
          ),
          Divider(height: 1, color: tokens.border),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                AppButton(
                  label: l10n.generate,
                  onPressed: () {
                    final markdown = const ArchitectureMarkdownGenerator()
                        .generate(
                          bundle: bundle,
                          state: architecture,
                          languageCode: languageCode,
                        );
                    showExportDialog(context, markdown: markdown);
                  },
                ),
                AppButton(
                  label: l10n.backDecisions,
                  variant: AppButtonVariant.secondary,
                  onPressed: () => const WizardRoute().go(context),
                ),
                TextButton(
                  onPressed: () {
                    ref.read(wizardControllerProvider.notifier).reset();
                    const WizardRoute().go(context);
                  },
                  child: Text(
                    l10n.restart,
                    style: TextStyle(color: tokens.muted, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DecisionRow extends StatelessWidget {
  const _DecisionRow({
    required this.row,
    required this.showGroup,
    required this.editLabel,
    required this.onEdit,
  });

  final ReviewRow row;
  final bool showGroup;
  final String editLabel;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (showGroup)
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 4),
            child: Text(
              row.groupTitle.toUpperCase(),
              style: TextStyle(
                color: tokens.muted,
                fontSize: 11,
                letterSpacing: 0.7,
                fontFamily: 'monospace',
              ),
            ),
          ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onEdit,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: AppGlyphIcon(
                      glyphFromName(row.icon),
                      size: 14,
                      color: tokens.muted,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 148,
                    child: Text(
                      row.category,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: tokens.muted,
                        fontSize: 13,
                        height: 1.3,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          row.headline,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.3,
                            color: row.pending ? tokens.muted : tokens.fg,
                          ),
                        ),
                        if (row.detail != null) ...[
                          const SizedBox(height: 2),
                          Text(
                            row.detail!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: tokens.muted,
                              fontSize: 12,
                              height: 1.35,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: editLabel,
                    onPressed: onEdit,
                    visualDensity: VisualDensity.compact,
                    icon: AppGlyphIcon(
                      AppGlyph.edit,
                      size: 14,
                      color: tokens.muted,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

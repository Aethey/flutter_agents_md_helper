import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_theme.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../shared/models/architecture_selection.dart';
import '../../../../shared/models/knowledge_bundle.dart';
import '../../../../shared/widgets/app_icons.dart';
import '../../domain/decision_engine.dart';
import '../../domain/wizard_navigation.dart';
import '../../domain/wizard_providers.dart';

class ArchitecturePanel extends ConsumerWidget {
  const ArchitecturePanel({super.key, required this.bundle});

  final KnowledgeBundle bundle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tokens = context.tokens;
    final architecture = ref.watch(wizardControllerProvider);
    final languageCode = ref.watch(localeControllerProvider).languageCode;
    final engine = DecisionEngine(bundle);
    final nav = WizardNavigation(engine);
    final current = nav.currentDecision(architecture);
    final visibleIds = {
      for (final decision in nav.visible(architecture)) decision.id,
    };
    final doneCount = [
      for (final decision in nav.visible(architecture))
        if (architecture.answers.containsKey(decision.id)) decision.id,
    ].length;
    final total = nav.visible(architecture).length;

    return ColoredBox(
      color: Color.lerp(tokens.bg, tokens.surface, 0.3)!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 16),
              children: [
                AppEyebrowText(l10n.archEyebrow),
                const SizedBox(height: 8),
                Text(
                  l10n.yourArchitecture,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  l10n.decisionsMade,
                  style: TextStyle(
                    color: tokens.muted,
                    fontSize: 12,
                    fontFamily: 'monospace',
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    _Mark(icon: AppGlyph.architecture),
                    const SizedBox(width: 8),
                    const Text(
                      'Flutter',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                for (final group in bundle.flow.groups)
                  _GroupTile(
                    title: group.title.resolve(languageCode),
                    icon: glyphFromName(group.icon),
                    isCurrent: group.decisionIds.contains(current.id),
                    isDone: group.decisionIds.any(
                      architecture.answers.containsKey,
                    ),
                    primaryLabel: () {
                      final names = _selectedNames(
                        bundle: bundle,
                        groupDecisionIds: group.decisionIds,
                        answers: architecture.answers,
                        languageCode: languageCode,
                      );
                      return names.isEmpty ? l10n.undecided : names.join(', ');
                    }(),
                    secondary: const <String>[],
                    editLabel: l10n.editNamed(
                      group.title.resolve(languageCode),
                    ),
                    onEdit: () {
                      final jumpId = group.decisionIds.firstWhere(
                        (id) =>
                            visibleIds.contains(id) ||
                            architecture.answers.containsKey(id),
                        orElse: () => group.decisionIds.first,
                      );
                      ref
                          .read(wizardControllerProvider.notifier)
                          .jumpTo(bundle, jumpId);
                    },
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: tokens.border)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.progress(doneCount, total),
                  style: TextStyle(
                    color: tokens.muted,
                    fontSize: 12,
                    fontFamily: 'monospace',
                  ),
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(999),
                  child: LinearProgressIndicator(
                    value: total == 0 ? 0 : doneCount / total,
                    minHeight: 3,
                    backgroundColor: tokens.fgSoft,
                    color: tokens.fg,
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

class AppEyebrowText extends StatelessWidget {
  const AppEyebrowText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        color: tokens.muted,
        fontSize: 11,
        letterSpacing: 0.88,
        fontFamily: 'monospace',
      ),
    );
  }
}

class _GroupTile extends StatefulWidget {
  const _GroupTile({
    required this.title,
    required this.icon,
    required this.isCurrent,
    required this.isDone,
    required this.primaryLabel,
    required this.secondary,
    required this.editLabel,
    required this.onEdit,
  });

  final String title;
  final AppGlyph icon;
  final bool isCurrent;
  final bool isDone;
  final String primaryLabel;
  final List<String> secondary;
  final String editLabel;
  final VoidCallback onEdit;

  @override
  State<_GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<_GroupTile> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final opacity = widget.isDone || widget.isCurrent ? 1.0 : 0.4;
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 150),
        opacity: opacity,
        child: Container(
          margin: const EdgeInsets.only(bottom: 2),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            color: widget.isCurrent ? tokens.fgSoft : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Mark(icon: widget.icon),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(color: tokens.muted, fontSize: 11),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: widget.isDone
                            ? tokens.accentSoft
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        widget.primaryLabel,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    for (final line in widget.secondary)
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 4),
                        child: Text(
                          line,
                          style: TextStyle(
                            color: tokens.muted,
                            fontSize: 11,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Opacity(
                opacity: _hover ? 1 : 0,
                child: IconButton(
                  tooltip: widget.editLabel,
                  onPressed: widget.onEdit,
                  icon: AppGlyphIcon(AppGlyph.edit, color: tokens.fg, size: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Mark extends StatelessWidget {
  const _Mark({required this.icon});

  final AppGlyph icon;

  @override
  Widget build(BuildContext context) {
    final color = context.tokens;
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        border: Border.all(color: color.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: AppGlyphIcon(icon, size: 14, color: color.fg)),
    );
  }
}

List<String> _selectedNames({
  required KnowledgeBundle bundle,
  required List<String> groupDecisionIds,
  required Map<String, ArchitectureSelection> answers,
  required String languageCode,
}) {
  final names = <String>[];
  for (final id in groupDecisionIds) {
    final answer = answers[id];
    if (answer == null) {
      continue;
    }
    final decision = bundle.flow.decisionById(id);
    for (final optionId in answer.optionIds) {
      names.add(
        decision.options
            .firstWhere((item) => item.id == optionId)
            .name
            .resolve(languageCode),
      );
    }
  }
  return names;
}

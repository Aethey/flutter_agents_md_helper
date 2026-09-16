import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/theme/app_theme.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../shared/models/decision.dart';
import '../../../../shared/models/knowledge_bundle.dart';
import '../../../../shared/widgets/app_controls.dart';
import '../../../../shared/widgets/app_icons.dart';
import '../../domain/decision_engine.dart';
import '../../domain/wizard_navigation.dart';
import '../../domain/wizard_providers.dart';
import 'architecture_panel.dart';

class InsightPanel extends ConsumerWidget {
  const InsightPanel({super.key, required this.bundle});

  final KnowledgeBundle bundle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tokens = context.tokens;
    final architecture = ref.watch(wizardControllerProvider);
    final languageCode = ref.watch(localeControllerProvider).languageCode;
    final engine = DecisionEngine(bundle);
    final nav = WizardNavigation(engine);
    final decision = nav.currentDecision(architecture);
    final ranked = engine.rank(
      decision: decision,
      answers: architecture.answers,
      languageCode: languageCode,
    );
    if (ranked.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: Text(l10n.insightEmpty, style: TextStyle(color: tokens.muted)),
      );
    }
    final previewId =
        architecture.previewedOptionId ??
        architecture.selectedOptionId ??
        ranked.first.option.id;
    final item = ranked.firstWhere(
      (entry) => entry.option.id == previewId,
      orElse: () => ranked.first,
    );
    final copy = item.technology.copy.resolve(languageCode);
    final previewing =
        architecture.previewedOptionId != null &&
        architecture.previewedOptionId != architecture.selectedOptionId &&
        (decision.selection == SelectionMode.single ||
            !architecture.selectedOptionIds.contains(
              architecture.previewedOptionId,
            ));

    return ColoredBox(
      color: Color.lerp(tokens.surface, tokens.bg, 0.45)!,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 32),
        children: [
          Row(
            children: [
              Expanded(child: AppEyebrowText(copy.label)),
              if (previewing)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: tokens.fgSoft,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    l10n.preview,
                    style: const TextStyle(
                      fontSize: 11,
                      fontFamily: 'monospace',
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            copy.name,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                unawaited(
                  launchUrl(
                    Uri.parse(item.technology.docsUrl),
                    mode: LaunchMode.externalApplication,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(l10n.docs, style: const TextStyle(fontSize: 13)),
                    const SizedBox(width: 6),
                    AppGlyphIcon(AppGlyph.docs, size: 13, color: tokens.fg),
                  ],
                ),
              ),
            ),
          ),
          Text(
            copy.description,
            style: TextStyle(color: tokens.muted, fontSize: 14, height: 1.55),
          ),
          if (item.shownBecause != null) ...[
            const SizedBox(height: 18),
            _Section(
              title: l10n.whyShown,
              items: [item.shownBecause!],
              positive: true,
            ),
          ],
          const SizedBox(height: 18),
          Divider(color: tokens.border, height: 1),
          const SizedBox(height: 8),
          _Section(title: l10n.pros, items: copy.advantages, positive: true),
          _Section(title: l10n.cons, items: copy.tradeOffs, positive: false),
          _Section(
            title: l10n.when,
            items: copy.recommendedWhen,
            positive: true,
          ),
          _Section(title: l10n.avoid, items: copy.avoidWhen, positive: false),
          const SizedBox(height: 18),
          Text(
            l10n.withLabel.toUpperCase(),
            style: TextStyle(
              color: tokens.muted,
              fontSize: 12,
              fontFamily: 'monospace',
              letterSpacing: 0.72,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [for (final item in copy.worksWellWith) AppTag(item)],
          ),
          if (item.technology.sources.isNotEmpty) ...[
            const SizedBox(height: 18),
            Text(
              l10n.sources.toUpperCase(),
              style: TextStyle(
                color: tokens.muted,
                fontSize: 12,
                fontFamily: 'monospace',
                letterSpacing: 0.72,
              ),
            ),
            const SizedBox(height: 10),
            for (final source in item.technology.sources)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: InkWell(
                  onTap: () {
                    unawaited(
                      launchUrl(
                        Uri.parse(source.url),
                        mode: LaunchMode.externalApplication,
                      ),
                    );
                  },
                  child: Text(
                    source.title,
                    style: TextStyle(
                      color: tokens.fg,
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                      decorationColor: tokens.muted,
                    ),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.items,
    required this.positive,
  });

  final String title;
  final List<String> items;
  final bool positive;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: tokens.muted,
              fontSize: 12,
              fontFamily: 'monospace',
              letterSpacing: 0.72,
            ),
          ),
          const SizedBox(height: 10),
          for (final item in items)
            Padding(
              padding: const EdgeInsets.only(bottom: 7, left: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 18,
                    child: Text(
                      positive ? '✓' : '–',
                      style: TextStyle(
                        color: positive ? tokens.fg : tokens.muted,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(fontSize: 14, height: 1.45),
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

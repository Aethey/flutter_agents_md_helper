import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/router/routes.dart';
import '../../../../app/theme/app_theme.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../shared/widgets/app_controls.dart';
import '../../../../shared/widgets/app_icons.dart';
import '../../domain/wizard_providers.dart';

class WizardTopNav extends ConsumerWidget {
  const WizardTopNav({super.key, required this.reviewActive});

  final bool reviewActive;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tokens = context.tokens;
    final locale = ref.watch(localeControllerProvider);
    return Material(
      color: tokens.bg.withValues(alpha: 0.88),
      child: SizedBox(
        height: 56,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  border: Border.all(color: tokens.border),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: AppGlyphIcon(
                    AppGlyph.architecture,
                    color: tokens.fg,
                    size: 14,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.appTitle,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.3,
                      ),
                    ),
                    if (MediaQuery.sizeOf(context).width >= 1100)
                      Text(
                        l10n.subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: tokens.muted, fontSize: 11),
                      ),
                  ],
                ),
              ),
              AppIconButton(
                tooltip: l10n.newProject,
                onPressed: () {
                  ref.read(wizardControllerProvider.notifier).reset();
                  const WizardRoute().go(context);
                },
                child: AppGlyphIcon(AppGlyph.plus, color: tokens.fg),
              ),
              AppIconButton(
                tooltip: l10n.review,
                selected: reviewActive,
                onPressed: () => const ReviewRoute().go(context),
                child: AppGlyphIcon(AppGlyph.review, color: tokens.fg),
              ),
              Container(
                width: 1,
                height: 16,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                color: tokens.border,
              ),
              AppIconButton(
                tooltip: l10n.github,
                onPressed: () {
                  unawaitedLaunch(
                    Uri.parse(
                      'https://github.com/Aethey/flutter_agents_md_helper',
                    ),
                  );
                },
                child: AppGlyphIcon(AppGlyph.github, color: tokens.fg),
              ),
              AppIconButton(
                tooltip: l10n.theme,
                onPressed: () =>
                    ref.read(themeModeControllerProvider.notifier).toggle(),
                child: AppGlyphIcon(AppGlyph.theme, color: tokens.fg),
              ),
              PopupMenuButton<String>(
                tooltip: l10n.language,
                initialValue: locale.languageCode,
                onSelected: (code) {
                  ref
                      .read(localeControllerProvider.notifier)
                      .setLocale(Locale(code));
                  unawaited(
                    ref.read(wizardControllerProvider.notifier).persist(),
                  );
                },
                itemBuilder: (context) => [
                  PopupMenuItem(value: 'en', child: Text(l10n.languageEnglish)),
                  PopupMenuItem(value: 'zh', child: Text(l10n.languageChinese)),
                  PopupMenuItem(
                    value: 'ja',
                    child: Text(l10n.languageJapanese),
                  ),
                ],
                child: SizedBox(
                  width: 44,
                  height: 44,
                  child: Center(
                    child: Text(
                      switch (locale.languageCode) {
                        'zh' => '中',
                        'ja' => 'あ',
                        _ => 'EN',
                      },
                      style: TextStyle(
                        color: tokens.fg,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void unawaitedLaunch(Uri uri) {
  unawaited(launchUrl(uri, mode: LaunchMode.externalApplication));
}

import 'package:flutter/material.dart';

@immutable
class AppTokens extends ThemeExtension<AppTokens> {
  const AppTokens({
    required this.bg,
    required this.surface,
    required this.fg,
    required this.muted,
    required this.border,
    required this.accent,
    required this.accentSoft,
    required this.fgSoft,
  });

  final Color bg;
  final Color surface;
  final Color fg;
  final Color muted;
  final Color border;
  final Color accent;
  final Color accentSoft;
  final Color fgSoft;

  static const dark = AppTokens(
    bg: Color(0xFF1A1B22),
    surface: Color(0xFF24252E),
    fg: Color(0xFFE8E9ED),
    muted: Color(0xFF9AA3B2),
    border: Color(0xFF3A3C48),
    accent: Color(0xFF0175C2),
    accentSoft: Color(0x240175C2),
    fgSoft: Color(0x0FE8E9ED),
  );

  static const light = AppTokens(
    bg: Color(0xFFF7F8FA),
    surface: Color(0xFFFFFFFF),
    fg: Color(0xFF1A1C24),
    muted: Color(0xFF5C6470),
    border: Color(0xFFE6E8EC),
    accent: Color(0xFF0175C2),
    accentSoft: Color(0x240175C2),
    fgSoft: Color(0x0F1A1C24),
  );

  @override
  AppTokens copyWith({
    Color? bg,
    Color? surface,
    Color? fg,
    Color? muted,
    Color? border,
    Color? accent,
    Color? accentSoft,
    Color? fgSoft,
  }) {
    return AppTokens(
      bg: bg ?? this.bg,
      surface: surface ?? this.surface,
      fg: fg ?? this.fg,
      muted: muted ?? this.muted,
      border: border ?? this.border,
      accent: accent ?? this.accent,
      accentSoft: accentSoft ?? this.accentSoft,
      fgSoft: fgSoft ?? this.fgSoft,
    );
  }

  @override
  AppTokens lerp(ThemeExtension<AppTokens>? other, double t) {
    if (other is! AppTokens) {
      return this;
    }
    return AppTokens(
      bg: Color.lerp(bg, other.bg, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      fg: Color.lerp(fg, other.fg, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      border: Color.lerp(border, other.border, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentSoft: Color.lerp(accentSoft, other.accentSoft, t)!,
      fgSoft: Color.lerp(fgSoft, other.fgSoft, t)!,
    );
  }
}

abstract final class AppTheme {
  static ThemeData dark() => _build(Brightness.dark, AppTokens.dark);

  static ThemeData light() => _build(Brightness.light, AppTokens.light);

  static ThemeData _build(Brightness brightness, AppTokens tokens) {
    final base = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: tokens.accent,
        onPrimary: Colors.white,
        secondary: tokens.accent,
        onSecondary: Colors.white,
        error: const Color(0xFFB3261E),
        onError: Colors.white,
        surface: tokens.surface,
        onSurface: tokens.fg,
      ),
      scaffoldBackgroundColor: tokens.bg,
      canvasColor: tokens.bg,
      dividerColor: tokens.border,
      fontFamily: null,
    );
    return base.copyWith(
      extensions: [tokens],
      textTheme: base.textTheme.apply(
        bodyColor: tokens.fg,
        displayColor: tokens.fg,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: tokens.bg.withValues(alpha: 0.88),
        foregroundColor: tokens.fg,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: tokens.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: tokens.border),
        ),
      ),
      tooltipTheme: TooltipThemeData(
        waitDuration: const Duration(milliseconds: 400),
        textStyle: TextStyle(color: tokens.fg, fontSize: 12),
        decoration: BoxDecoration(
          color: tokens.surface,
          border: Border.all(color: tokens.border),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

extension AppTokensContext on BuildContext {
  AppTokens get tokens =>
      Theme.of(this).extension<AppTokens>() ?? AppTokens.dark;
}

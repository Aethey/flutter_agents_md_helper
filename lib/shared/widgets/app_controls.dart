import 'package:flutter/material.dart';

import '../../app/theme/app_theme.dart';

enum AppButtonVariant { primary, secondary, ghost }

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.enabled = true,
    this.arrow = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool enabled;
  final bool arrow;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final enabled = widget.enabled && widget.onPressed != null;
    final Color background;
    final Color foreground;
    final BorderSide border;
    switch (widget.variant) {
      case AppButtonVariant.primary:
        background = enabled
            ? (_hover
                  ? Color.lerp(tokens.accent, tokens.fg, 0.18)!
                  : tokens.accent)
            : tokens.accent.withValues(alpha: 0.38);
        foreground = Colors.white;
        border = BorderSide(
          color: tokens.accent.withValues(alpha: enabled ? 1 : 0.38),
        );
      case AppButtonVariant.secondary:
        background = _hover ? tokens.fgSoft : Colors.transparent;
        foreground = tokens.fg;
        border = BorderSide(color: tokens.border);
      case AppButtonVariant.ghost:
        background = _hover ? tokens.fgSoft : Colors.transparent;
        foreground = tokens.fg;
        border = BorderSide.none;
    }
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 44),
        child: Material(
          color: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: border,
          ),
          child: InkWell(
            onTap: enabled ? widget.onPressed : null,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: widget.variant == AppButtonVariant.ghost ? 12 : 18,
                vertical: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.label,
                    style: TextStyle(
                      color: foreground,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (widget.arrow) ...[
                    const SizedBox(width: 8),
                    Text(
                      '→',
                      style: TextStyle(color: foreground, fontSize: 14),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.tooltip,
    required this.child,
    this.onPressed,
    this.selected = false,
  });

  final String tooltip;
  final Widget child;
  final VoidCallback? onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Tooltip(
      message: tooltip,
      child: Material(
        color: selected ? tokens.fgSoft : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(width: 44, height: 44, child: Center(child: child)),
        ),
      ),
    );
  }
}

class AppTag extends StatelessWidget {
  const AppTag(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: tokens.border),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: tokens.muted, fontSize: 12),
      ),
    );
  }
}

class AppEyebrow extends StatelessWidget {
  const AppEyebrow(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        color: tokens.muted,
        fontSize: 11,
        letterSpacing: 0.08 * 11,
        fontFamily: 'monospace',
      ),
    );
  }
}

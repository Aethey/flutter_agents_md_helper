import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app/theme/app_theme.dart';
import 'app_controls.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.title,
    required this.summary,
    required this.tags,
    required this.selected,
    required this.previewed,
    required this.multiple,
    required this.onSelect,
    required this.onPreview,
  });

  final String title;
  final String summary;
  final List<String> tags;
  final bool selected;
  final bool previewed;
  final bool multiple;
  final VoidCallback onSelect;
  final VoidCallback onPreview;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final borderColor = selected
        ? tokens.accent
        : previewed
        ? Color.lerp(tokens.fg, tokens.border, 0.68)!
        : tokens.border;
    final background = selected
        ? Color.lerp(tokens.accent, tokens.surface, previewed ? 0.86 : 0.90)!
        : previewed
        ? Color.lerp(tokens.fg, tokens.surface, 0.96)!
        : tokens.surface;
    return Semantics(
      button: true,
      selected: selected,
      label: title,
      child: MouseRegion(
        onEnter: (_) => onPreview(),
        child: Focus(
          onFocusChange: (focused) {
            if (focused) {
              onPreview();
            }
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 44),
            child: Material(
              color: background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: borderColor),
              ),
              child: InkWell(
                onTap: onSelect,
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 14,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        multiple
                            ? (selected
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank)
                            : (selected
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off),
                        size: 22,
                        color: selected ? tokens.accent : tokens.muted,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 2,
                        child: Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.3,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 4,
                        child: Text(
                          summary,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: tokens.muted,
                            fontSize: 14,
                            height: 1.45,
                          ),
                        ),
                      ),
                      if (tags.isNotEmpty) ...[
                        const SizedBox(width: 12),
                        Expanded(
                          flex: 3,
                          child: Wrap(
                            spacing: 6,
                            runSpacing: 6,
                            alignment: WrapAlignment.end,
                            children: [for (final tag in tags) AppTag(tag)],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OptionListShortcuts extends StatelessWidget {
  const OptionListShortcuts({
    super.key,
    required this.optionIds,
    required this.currentId,
    required this.onMove,
    required this.onSelect,
    required this.child,
  });

  final List<String> optionIds;
  final String? currentId;
  final ValueChanged<String> onMove;
  final VoidCallback onSelect;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.arrowDown): _MoveIntent('down'),
        SingleActivator(LogicalKeyboardKey.keyJ): _MoveIntent('down'),
        SingleActivator(LogicalKeyboardKey.arrowUp): _MoveIntent('up'),
        SingleActivator(LogicalKeyboardKey.keyK): _MoveIntent('up'),
        SingleActivator(LogicalKeyboardKey.enter): _SelectIntent(),
      },
      child: Actions(
        actions: {
          _MoveIntent: CallbackAction<_MoveIntent>(
            onInvoke: (intent) {
              if (optionIds.isEmpty) {
                return null;
              }
              final current = currentId ?? optionIds.first;
              final index = optionIds
                  .indexOf(current)
                  .clamp(0, optionIds.length - 1);
              final next =
                  optionIds[_moveIndex(
                    index,
                    intent.direction,
                    optionIds.length,
                  )];
              onMove(next);
              return null;
            },
          ),
          _SelectIntent: CallbackAction<_SelectIntent>(
            onInvoke: (_) {
              onSelect();
              return null;
            },
          ),
        },
        child: child,
      ),
    );
  }
}

class _MoveIntent extends Intent {
  const _MoveIntent(this.direction);
  final String direction;
}

class _SelectIntent extends Intent {
  const _SelectIntent();
}

int _moveIndex(int idx, String dir, int n) {
  if (dir == 'down') {
    return idx + 1 < n ? idx + 1 : idx;
  }
  if (dir == 'up') {
    return idx > 0 ? idx - 1 : idx;
  }
  return idx;
}

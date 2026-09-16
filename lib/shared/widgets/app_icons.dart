import 'package:flutter/material.dart';

enum AppGlyph {
  structure,
  architecture,
  state,
  routing,
  network,
  models,
  native,
  monitor,
  plus,
  review,
  github,
  theme,
  language,
  docs,
  edit,
}

class AppGlyphIcon extends StatelessWidget {
  const AppGlyphIcon(this.glyph, {super.key, this.size = 16, this.color});

  final AppGlyph glyph;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: _GlyphPainter(
        glyph,
        color ?? IconTheme.of(context).color ?? Colors.white,
      ),
    );
  }
}

class _GlyphPainter extends CustomPainter {
  const _GlyphPainter(this.glyph, this.color);

  final AppGlyph glyph;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.7
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final s = size.width / 24;
    canvas.scale(s);
    final path = Path();
    switch (glyph) {
      case AppGlyph.structure:
        path
          ..moveTo(4, 7)
          ..lineTo(20, 7)
          ..moveTo(4, 12)
          ..lineTo(14, 12)
          ..moveTo(4, 17)
          ..lineTo(20, 17);
      case AppGlyph.architecture:
        path.addRRect(
          RRect.fromRectAndRadius(
            const Rect.fromLTWH(5, 5, 14, 14),
            const Radius.circular(2),
          ),
        );
        path
          ..moveTo(5, 10)
          ..lineTo(19, 10)
          ..moveTo(10, 10)
          ..lineTo(10, 19);
      case AppGlyph.state:
        path.addOval(Rect.fromCircle(center: const Offset(12, 12), radius: 8));
        path
          ..moveTo(12, 8)
          ..lineTo(12, 12)
          ..lineTo(15, 14);
      case AppGlyph.routing:
        path
          ..moveTo(5, 19)
          ..lineTo(5, 8)
          ..quadraticBezierTo(5, 5, 8, 5)
          ..lineTo(16, 5);
        canvas.drawCircle(const Offset(16, 5), 2, paint);
        canvas.drawCircle(const Offset(5, 19), 2, paint);
      case AppGlyph.network:
        path.addOval(Rect.fromCircle(center: const Offset(12, 12), radius: 8));
        path
          ..moveTo(5, 12)
          ..lineTo(19, 12)
          ..moveTo(12, 5)
          ..lineTo(12, 19);
      case AppGlyph.models:
        path
          ..moveTo(4, 7)
          ..lineTo(12, 4)
          ..lineTo(20, 7)
          ..lineTo(20, 17)
          ..lineTo(12, 20)
          ..lineTo(4, 17)
          ..close()
          ..moveTo(12, 10)
          ..lineTo(12, 20)
          ..moveTo(4, 7)
          ..lineTo(12, 10)
          ..lineTo(20, 7);
      case AppGlyph.native:
        path.addRRect(
          RRect.fromRectAndRadius(
            const Rect.fromLTWH(7, 3, 10, 18),
            const Radius.circular(2),
          ),
        );
        path
          ..moveTo(10, 19)
          ..lineTo(14, 19);
      case AppGlyph.monitor:
        path
          ..moveTo(4, 12)
          ..quadraticBezierTo(12, 4, 20, 12)
          ..moveTo(12, 12)
          ..lineTo(12, 19)
          ..moveTo(8, 19)
          ..lineTo(16, 19);
      case AppGlyph.plus:
        path
          ..moveTo(12, 5)
          ..lineTo(12, 19)
          ..moveTo(5, 12)
          ..lineTo(19, 12);
      case AppGlyph.review:
        path.addRRect(
          RRect.fromRectAndRadius(
            const Rect.fromLTWH(5, 4, 14, 16),
            const Radius.circular(2),
          ),
        );
        path
          ..moveTo(8, 9)
          ..lineTo(16, 9)
          ..moveTo(8, 13)
          ..lineTo(16, 13)
          ..moveTo(8, 17)
          ..lineTo(13, 17);
      case AppGlyph.github:
        paint.style = PaintingStyle.fill;
        path.addOval(Rect.fromCircle(center: const Offset(12, 12), radius: 8));
      case AppGlyph.theme:
        path.addOval(Rect.fromCircle(center: const Offset(12, 12), radius: 4));
        path
          ..moveTo(12, 3)
          ..lineTo(12, 5)
          ..moveTo(12, 19)
          ..lineTo(12, 21)
          ..moveTo(4.2, 4.2)
          ..lineTo(5.6, 5.6)
          ..moveTo(18.4, 18.4)
          ..lineTo(19.8, 19.8)
          ..moveTo(3, 12)
          ..lineTo(5, 12)
          ..moveTo(19, 12)
          ..lineTo(21, 12)
          ..moveTo(4.2, 19.8)
          ..lineTo(5.6, 18.4)
          ..moveTo(18.4, 5.6)
          ..lineTo(19.8, 4.2);
      case AppGlyph.language:
        path.addOval(Rect.fromCircle(center: const Offset(12, 12), radius: 9));
        path
          ..moveTo(3, 12)
          ..lineTo(21, 12)
          ..moveTo(12, 3)
          ..cubicTo(14.5, 6, 15.8, 9, 15.8, 12)
          ..cubicTo(15.8, 15, 14.5, 18, 12, 21)
          ..cubicTo(9.5, 18, 8.2, 15, 8.2, 12)
          ..cubicTo(8.2, 9, 9.5, 6, 12, 3);
      case AppGlyph.docs:
        path
          ..moveTo(6, 3.5)
          ..lineTo(12.5, 3.5)
          ..lineTo(12.5, 10)
          ..moveTo(12.5, 3.5)
          ..lineTo(6, 10)
          ..moveTo(9, 3.5)
          ..lineTo(4.2, 3.5)
          ..quadraticBezierTo(3, 3.5, 3, 4.7)
          ..lineTo(3, 11.8)
          ..quadraticBezierTo(3, 13, 4.2, 13)
          ..lineTo(11.3, 13);
      case AppGlyph.edit:
        path
          ..moveTo(4, 20)
          ..lineTo(8, 20)
          ..lineTo(18, 10)
          ..lineTo(14, 6)
          ..lineTo(4, 16)
          ..lineTo(4, 20)
          ..moveTo(14, 6)
          ..lineTo(18, 10);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _GlyphPainter oldDelegate) {
    return oldDelegate.glyph != glyph || oldDelegate.color != color;
  }
}

AppGlyph glyphFromName(String name) {
  return switch (name) {
    'architecture' => AppGlyph.architecture,
    'state' => AppGlyph.state,
    'routing' => AppGlyph.routing,
    'network' => AppGlyph.network,
    'models' => AppGlyph.models,
    'native' => AppGlyph.native,
    'monitor' => AppGlyph.monitor,
    _ => AppGlyph.structure,
  };
}

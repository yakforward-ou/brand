import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart'
    show CustomPainter, Color, Offset, Path, Size, Paint, PaintingStyle;

@immutable
class YakForwardLogoPainter extends CustomPainter {
  final Color backgroundColor;
  final double backgroundOpacity;
  final Color foregroundColor;
  final double foregroundOpacity;

  const YakForwardLogoPainter({
    required this.backgroundColor,
    required this.backgroundOpacity,
    required this.foregroundColor,
    required this.foregroundOpacity,
  });

  static const _idealSide = 1250;
  static const _backgroundCX = .4976000;
  static const _point1 = Offset(123 / _idealSide, 242 / _idealSide);
  static const _point2 = Offset(328 / _idealSide, 348.5 / _idealSide);
  static const _point3 = Offset(527.5 / _idealSide, 846 / _idealSide);
  static const _point4 = Offset(328 / _idealSide, 750.5 / _idealSide);
  static const _point5 = Offset(527.5 / _idealSide, 843.5 / _idealSide);
  static const _point6 = Offset(754.5 / _idealSide, 960.5 / _idealSide);
  static const _point7 = Offset(729.5 / _idealSide, 1246.5 / _idealSide);
  static const _point8 = Offset(527.5 / _idealSide, 1246.5 / _idealSide);
  static const _point9 = Offset(770.5 / _idealSide, 746.5 / _idealSide);
  static const _point10 = Offset(959.5 / _idealSide, 663 / _idealSide);
  static const _point11 = Offset(926 / _idealSide, 746.5 / _idealSide);
  static const _point12 = Offset(754.5 / _idealSide, 971.5 / _idealSide);
  static const _point13 = Offset(522.5 / _idealSide, 448.5 / _idealSide);
  static const _point14 = Offset(1125.5 / _idealSide, 245.5 / _idealSide);
  static const _point15 = Offset(1030 / _idealSide, 494.5 / _idealSide);
  static const _point16 = Offset(795.5 / _idealSide, 577 / _idealSide);
  static const _point17 = Offset(528.5 / _idealSide, 844 / _idealSide);

  Iterable<Path> _paths(Size size) => [
        Path()
          ..moveTo(_point1.dx * size.width, _point1.dy * size.height)
          ..lineTo(_point2.dx * size.width, _point2.dy * size.height)
          ..lineTo(_point3.dx * size.width, _point3.dy * size.height)
          ..lineTo(_point4.dx * size.width, _point4.dy * size.height)
          ..lineTo(_point1.dx * size.width, _point1.dy * size.height)
          ..close(),
        Path()
          ..moveTo(_point5.dx * size.width, _point5.dy * size.height)
          ..lineTo(_point6.dx * size.width, _point6.dy * size.height)
          ..lineTo(_point7.dx * size.width, _point7.dy * size.height)
          ..lineTo(_point8.dx * size.width, _point8.dy * size.height)
          ..lineTo(_point5.dx * size.width, _point5.dy * size.height)
          ..close(),
        Path()
          ..moveTo(_point9.dx * size.width, _point9.dy * size.height)
          ..lineTo(_point10.dx * size.width, _point10.dy * size.height)
          ..lineTo(_point11.dx * size.width, _point11.dy * size.height)
          ..lineTo(_point12.dx * size.width, _point12.dy * size.height)
          ..lineTo(_point9.dx * size.width, _point9.dy * size.height)
          ..close(),
        Path()
          ..moveTo(_point13.dx * size.width, _point13.dy * size.height)
          ..lineTo(_point14.dx * size.width, _point14.dy * size.height)
          ..lineTo(_point15.dx * size.width, _point15.dy * size.height)
          ..lineTo(_point16.dx * size.width, _point16.dy * size.height)
          ..lineTo(_point17.dx * size.width, _point17.dy * size.height)
          ..lineTo(_point13.dx * size.width, _point13.dy * size.height)
          ..close(),
      ];

  @override
  void paint(canvas, size) {
    final squaredSize = Size.square(size.shortestSide);

    final backgroundPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = backgroundColor.withOpacity(backgroundOpacity);

    canvas.drawCircle(
      Offset(
        squaredSize.width * _backgroundCX,
        squaredSize.height * _backgroundCX,
      ),
      squaredSize.width * _backgroundCX,
      backgroundPaint,
    );

    final foregroundPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = foregroundColor.withOpacity(foregroundOpacity);

    for (final path in _paths(Size.square(size.shortestSide))) {
      canvas.drawPath(path, foregroundPaint);
    }
  }

  @override
  bool operator ==(other) =>
      other is YakForwardLogoPainter && other.hashCode == hashCode;

  @override
  int get hashCode => Object.hashAll([
        backgroundColor,
        backgroundOpacity,
        foregroundColor,
        foregroundOpacity,
      ]);

  @override
  bool shouldRepaint(covariant oldDelegate) => oldDelegate != this;
}

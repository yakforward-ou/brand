import 'package:flutter/rendering.dart';

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

  static const point1 = Offset(123 / _idealSide, 242 / _idealSide);
  static const point2 = Offset(328 / _idealSide, 348.5 / _idealSide);
  static const point3 = Offset(527.5 / _idealSide, 846 / _idealSide);
  static const point4 = Offset(328 / _idealSide, 750.5 / _idealSide);
  static const point5 = Offset(527.5 / _idealSide, 843.5 / _idealSide);
  static const point6 = Offset(754.5 / _idealSide, 960.5 / _idealSide);
  static const point7 = Offset(729.5 / _idealSide, 1246.5 / _idealSide);
  static const point8 = Offset(527.5 / _idealSide, 1246.5 / _idealSide);
  static const point9 = Offset(770.5 / _idealSide, 746.5 / _idealSide);
  static const point10 = Offset(959.5 / _idealSide, 663 / _idealSide);
  static const point11 = Offset(926 / _idealSide, 746.5 / _idealSide);
  static const point12 = Offset(754.5 / _idealSide, 971.5 / _idealSide);
  static const point13 = Offset(522.5 / _idealSide, 448.5 / _idealSide);
  static const point14 = Offset(1125.5 / _idealSide, 245.5 / _idealSide);
  static const point15 = Offset(1030 / _idealSide, 494.5 / _idealSide);
  static const point16 = Offset(795.5 / _idealSide, 577 / _idealSide);
  static const point17 = Offset(528.5 / _idealSide, 844 / _idealSide);

  Iterable<Path> _paths(Size size) => [
        Path()
          ..moveTo(point1.dx * size.width, point1.dy * size.height)
          ..lineTo(point2.dx * size.width, point2.dy * size.height)
          ..lineTo(point3.dx * size.width, point3.dy * size.height)
          ..lineTo(point4.dx * size.width, point4.dy * size.height)
          ..lineTo(point1.dx * size.width, point1.dy * size.height)
          ..close(),
        Path()
          ..moveTo(point5.dx * size.width, point5.dy * size.height)
          ..lineTo(point6.dx * size.width, point6.dy * size.height)
          ..lineTo(point7.dx * size.width, point7.dy * size.height)
          ..lineTo(point8.dx * size.width, point8.dy * size.height)
          ..lineTo(point5.dx * size.width, point5.dy * size.height)
          ..close(),
        Path()
          ..moveTo(point9.dx * size.width, point9.dy * size.height)
          ..lineTo(point10.dx * size.width, point10.dy * size.height)
          ..lineTo(point11.dx * size.width, point11.dy * size.height)
          ..lineTo(point12.dx * size.width, point12.dy * size.height)
          ..lineTo(point9.dx * size.width, point9.dy * size.height)
          ..close(),
        Path()
          ..moveTo(point13.dx * size.width, point13.dy * size.height)
          ..lineTo(point14.dx * size.width, point14.dy * size.height)
          ..lineTo(point15.dx * size.width, point15.dy * size.height)
          ..lineTo(point16.dx * size.width, point16.dy * size.height)
          ..lineTo(point17.dx * size.width, point17.dy * size.height)
          ..lineTo(point13.dx * size.width, point13.dy * size.height)
          ..close(),
      ];

  static const _backgroundCX = .4976000;

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

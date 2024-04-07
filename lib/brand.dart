library brand;

import 'package:flutter/rendering.dart' show CustomPainter, Color;
import 'package:flutter/widgets.dart' show IconData;

import 'src/brand_colors.dart';
import 'src/logo_painter.dart';
export 'src/brand_colors.dart';

const _fontFamily = 'yakforward';
const _codepoint = 0xe800;
const _fontPackage = 'yakforward_logo';

abstract final class Brand {
  static const IconData iconData = IconData(
    _codepoint,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const colors = BrandColors();

  static CustomPainter customPainter({
    Color backgroundColor = BrandColors.orange,
    double backgroundOpacity = 1,
    Color foregroundColor = BrandColors.blue,
    double foregroundOpacity = 1,
  }) =>
      YakForwardLogoPainter(
        backgroundColor: backgroundColor,
        backgroundOpacity: backgroundOpacity,
        foregroundColor: foregroundColor,
        foregroundOpacity: foregroundOpacity,
      );
}

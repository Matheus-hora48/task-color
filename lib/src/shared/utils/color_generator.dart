import 'dart:math';

import 'package:flutter/material.dart';

/// Class responsible for generating random colors.
class ColorGenerator {
  static const int _maxRGBValue = 256;
  static const double _opaqueAlphaValue = 1.0;

  /// Class responsible for generating random colors.
  Color randomColor() {
    return Color.fromRGBO(
      Random().nextInt(_maxRGBValue),
      Random().nextInt(_maxRGBValue),
      Random().nextInt(_maxRGBValue),
      _opaqueAlphaValue,
    );
  }
}

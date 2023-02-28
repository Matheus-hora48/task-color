import 'package:flutter/material.dart';

/// Repository responsible for managing the colors of the application.
class ColorRepository {
  static Color? _backgroundColor;

  /// Sets the current background color of the application.
  static set backgroundColor(Color color) {
    _backgroundColor = color;
  }

  /// Returns the current background color of the application.
  static Color get backgroundColor {
    return _backgroundColor ?? Colors.transparent;
  }
}

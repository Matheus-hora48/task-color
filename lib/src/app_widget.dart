import 'package:flutter/material.dart';
import 'package:task_color/src/home/home_page.dart';
import 'package:task_color/src/shared/utils/color_repository.dart';

/// Main widget of the application.
class AppWidget extends StatelessWidget {
  /// Application color repository.
  final ColorRepository _colorRepository = ColorRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Generator',
      home: HomePage(
        colorRepository: _colorRepository,
      ),
    );
  }
}

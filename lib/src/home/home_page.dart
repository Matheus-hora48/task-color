import 'package:flutter/material.dart';
import 'package:task_color/src/shared/utils/color_generator.dart';
import 'package:task_color/src/shared/utils/color_repository.dart';

/// Application homepage.
class HomePage extends StatefulWidget {
  /// Application color repository.
  final ColorRepository colorRepository;

  /// builder
  const HomePage({
    Key? key,
    required this.colorRepository,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ColorGenerator _colorGenerator = ColorGenerator();
  Color _backgroundColor = Colors.transparent;

  void _updateBackgroundColor() {
    setState(() {
      _backgroundColor = _colorGenerator.randomColor();
      ColorRepository.backgroundColor = _backgroundColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateBackgroundColor,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Color Generator'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: _backgroundColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    super.key,
    required this.colorIndex,
    required this.colorList,
    required this.onColorSelected,
  });

  final int colorIndex;
  final List<Color> colorList;
  final void Function(int index) onColorSelected;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

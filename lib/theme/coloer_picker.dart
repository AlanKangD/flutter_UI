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
    return Row(
      children: colorList.asMap().entries.map((entry) {
        int index = entry.key;
        Color color = entry.value;
        return CircleAvatar(
          backgroundColor: color,
          radius: 20,
        );
      }).toList(),
    );
  }
}

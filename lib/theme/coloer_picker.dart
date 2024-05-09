import 'package:flutter/material.dart';
import 'package:house_of_tomorrow/src/service/theme_service.dart';

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
        bool isSelected = colorIndex == index;
        return Container(
          decoration: BoxDecoration(
            border: isSelected
                ? Border.all(
                    color: context.color.primary,
                    width: 3,
                  )
                : null,
          ),
          child: CircleAvatar(
            backgroundColor: color,
            radius: 20,
          ),
        );
      }).toList(),
    );
  }
}

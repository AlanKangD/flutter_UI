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
    return Wrap(
      spacing: 16,
      children: colorList.asMap().entries.map((entry) {
        int index = entry.key;
        Color color = entry.value;
        bool isSelected = colorIndex == index;
        return GestureDetector(
          onTap: () => onColorSelected(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 222),
            decoration: BoxDecoration(
              border: isSelected
                  ? Border.all(
                      color: context.color.primary,
                      width: 3,
                    )
                  : null,
              borderRadius: BorderRadius.circular(99),
            ),
            padding: const EdgeInsets.all(1),
            child: CircleAvatar(
              backgroundColor: color,
              radius: 20,
            ),
          ),
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:house_of_tomorrow/src/service/theme_service.dart';

class CircularIndicatior extends StatelessWidget {
  const CircularIndicatior({
    super.key,
    required this.child,
    required this.isBusy,
  });

  final Widget child;
  final bool isBusy;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,

        // CircurlarIndicator
        Container(
          color: context.color.background,
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        ),
      ],
    );
  }
}

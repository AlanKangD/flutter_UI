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
        AnimatedOpacity(
          duration: const Duration(milliseconds: 2222),
          opacity: isBusy ? 1 : 0,
          child: Container(
            color: context.color.background,
            alignment: Alignment.center,
            child: CircularProgressIndicator(
              color: context.color.primary,
              value: isBusy ? null : 0,
            ),
          ),
        ),
      ],
    );
  }
}

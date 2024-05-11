import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
    required this.count,
    required this.onChanged,
  });

  final int count;
  final void Function(int count) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:flutter/material.dart';
import 'package:house_of_tomorrow/src/service/theme_service.dart';

part 'button_size.dart';
part 'button_type.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  //클릭 이벤트
  final void Function() onPressed;

  // Button 타입 & 크기
  final ButtonType type;
  final ButtonSize size;

  // 비활성화 여부
  final bool isInactive;

  // 텍스트 & 아이콘
  final String? text;
  final String? icon;

  // 폭
  final double? width;

  // 커스텀 색상
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

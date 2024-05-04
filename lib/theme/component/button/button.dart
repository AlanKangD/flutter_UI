import 'package:flutter/material.dart';
import 'package:house_of_tomorrow/src/service/theme_service.dart';

part 'button_size.dart';
part 'button_type.dart';

class Button extends StatefulWidget {
  const Button({
    super.key,
    required this.onPressed,
    ButtonType? type,
    ButtonSize? size,
    bool? isInactive,
    this.text,
    this.icon,
    this.width,
    this.color,
    this.backgroundColor,
    this.borderColor,
  })  : type = type ?? ButtonType.fill,
        size = size ?? ButtonSize.medium,
        isInactive = isInactive ?? false;

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
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  //버튼이 눌려있는지 여부
  bool isPressed = false;

  // 비활성화 여부
  bool get isInactive => isPressed || widget.isInactive;

  // Text & Icon color
  Color get color => widget.type.getColor(
        context,
        isInactive,
        widget.color,
      );

  // Background Color
  Color get backgroundColor => widget.type.getBackgroundColor(
        context,
        isInactive,
        widget.backgroundColor,
      );

  // Border
  Border? get border => widget.type.getBorder(
        context,
        isInactive,
        widget.borderColor,
      );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

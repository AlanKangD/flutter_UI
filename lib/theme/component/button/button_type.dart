part of 'button.dart';

// 버튼 타입
enum ButtonType {
  fill,
  flat,
  outline;

  // 텍스트 & 아이콘 색상
  Color getColor(
    BuildContext context,
    bool isInative, [
    Color? color,
  ]) {
    // 전달 받는 파라미터 값 중에서 [] 를 넣어주면 선택적 위치 매개변수라고 하며 필수로 전달하지 않은 값이라고 생각하면 됨
    switch (this) {
      case ButtonType.fill:
        return isInative
            ? context.color.inactiveContainer
            : color ?? context.color.onPrimary;
      case ButtonType.flat:
      case ButtonType.outline:
        return isInative
            ? context.color.inactive
            : color ?? context.color.primary;
    }
  }

  // 배경 색상
  Color getBackgroundColor(
    BuildContext context,
    bool isInactive, [
    Color? color,
  ]) {
    switch (this) {
      case ButtonType.fill:
        return isInactive
            ? context.color.inactiveContainer
            : color ?? context.color.primary;
      case ButtonType.flat:
      case ButtonType.outline:
        return color ?? Colors.transparent;
    }
  }

  // 테두리
  Border? getBorder(
    BuildContext context,
    bool isInactive, [
    Color? color,
  ]) {
    switch (this) {
      case ButtonType.fill:
      case ButtonType.flat:
        return null;
      case ButtonType.outline:
        return Border.all(color: getColor(context, isInactive, color));
    }
  }
}

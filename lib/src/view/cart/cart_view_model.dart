import 'package:house_of_tomorrow/src/model/cart_item.dart';
import 'package:house_of_tomorrow/src/service/cart_service.dart';
import 'package:house_of_tomorrow/src/view/base_view_model.dart';
import 'package:house_of_tomorrow/theme/component/toast/toast.dart';
import 'package:house_of_tomorrow/util/helper/intl_helper.dart';
import 'package:house_of_tomorrow/util/lang/generated/l10n.dart';

class CartViewModel extends BaseViewModel {
  CartViewModel({
    required this.cartService,
  }) {
    cartService.addListener(notifyListeners);
  }

  final CartService cartService;

  @override
  void dispose() {
    cartService.removeListener(notifyListeners);
    super.dispose();
  }

  // 전체 CartITem
  List<CartItem> get cartItemList => cartService.cartItemList;

  // 선택한 CartItem 목록
  List<CartItem> get selectedCartItemList => cartService.selectedCartItemList;

  // 최종 가격
  String get totalPrice {
    return cartService.selectedCartItemList.isEmpty
        ? '0'
        : IntlHelper.currency(
            symbol: cartService.selectedCartItemList.first.product.priceUnit,
            number: cartService.selectedCartItemList.fold(0, (prev, curr) {
              return prev + curr.count * curr.product.price;
            }),
          );
  }

  // 선택한 CartItem 삭제
  void onDeletePressed() {
    cartService.delete(cartService.selectedCartItemList);
    Toast.show(S.current.deleteDialogSuccessToast);
  }

  // CartTitem 클릭
  void onCartItemPressed(int index) {
    final cartItem = cartItemList[index];
    cartService.update(
      index,
      cartItem.copyWith(isSelected: !cartItem.isSelected),
    );
  }

  // CartItem 개수 변경
  void onCountChanged(int index, int count) {
    final cartItem = cartItemList[index];
    cartService.update(
      index,
      cartItem.copyWith(
        count: count,
      ),
    );
  }

  // 선택한 CartItem 결제
  void onCheckoutPressed() {
    // 상품 결제 로직이 있어야하지만 현재 상품 결제가 로직을 생성하지 않아서
    // 상품 삭제처리로 결제 되었다는 효과를 줌
    cartService.delete(cartService.selectedCartItemList);
    Toast.show(S.current.checkoutDialogSuccessToast);
  }
}

import 'package:house_of_tomorrow/src/service/cart_service.dart';
import 'package:house_of_tomorrow/src/view/base_view_model.dart';

class CartViewModel extends BaseViewModel {
  CartViewModel({
    required this.cartService,
  });

  final CartService cartService;
}

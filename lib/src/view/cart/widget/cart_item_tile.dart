import 'package:flutter/material.dart';
import 'package:house_of_tomorrow/src/model/cart_item.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({
    super.key,
    required this.cartItem,
    required this.onPressed,
    required this.onCountChanged,
  });

  final CartItem cartItem;
  final void Function() onPressed;
  final void Function(int count) onCountChanged;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

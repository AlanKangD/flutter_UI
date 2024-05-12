import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:house_of_tomorrow/src/model/cart_item.dart';
import 'package:house_of_tomorrow/src/service/theme_service.dart';

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
    final productColor = cartItem.product.productColorList[cartItem.colorIndex];
    return Row(
      children: [
        Stack(
          children: [
            /// Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: productColor.iamgeUrl,
                width: 92,
                height: 92,
                fit: BoxFit.cover,
                color: context.color.background,
                colorBlendMode: BlendMode.darken,
              ),
            ),

            /// Check Icon
          ],
        ),
        const Expanded(
          child: Column(
            children: [
              /// Name
              Row(
                children: [
                  /// Price
                  /// CounterButton
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

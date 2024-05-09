import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:house_of_tomorrow/src/model/product.dart';
import 'package:house_of_tomorrow/src/service/theme_service.dart';

class ProductColorPreview extends StatelessWidget {
  const ProductColorPreview({
    super.key,
    required this.colorIndex,
    required this.product,
  });

  final int colorIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: context.deco.shadow,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              product.productColorList[colorIndex].iamgeUrl,
              fit: BoxFit.cover,
            ),
          ),

          /// name
          const Row(
            children: [
              /// Brand
              /// Price
            ],
          )
        ],
      ),
    );
  }
}

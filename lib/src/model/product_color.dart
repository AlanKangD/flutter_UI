import 'package:flutter/material.dart';

class ProductColor {
  final String iamgeUrl;
  final Color color;

  const ProductColor({
    required this.iamgeUrl,
    required this.color,
  });

  factory ProductColor.fromJson(Map<String, dynamic> json) {
    return ProductColor(
      iamgeUrl: json['iamgeUrl'] ?? '',
      color: Color(int.tryParse(json['hexColor']) ?? 0xFF000000),
    );
  }
}

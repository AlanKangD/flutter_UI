import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:house_of_tomorrow/src/model/product.dart';
import 'package:house_of_tomorrow/src/repository/product_repository.dart';
import 'package:house_of_tomorrow/src/view/base_view_model.dart';
import 'package:house_of_tomorrow/util/helper/network_helper.dart';

class ShoppingViewModel extends BaseViewModel {
  List<Product> productList = [];

  TextEditingController textcontroller = TextEditingController();
  final ProductRepository productRepository = ProductRepository();

  String get keyword => textcontroller.text.trim();

  Future<void> searchProductList() async {
    await productRepository.searchProductList(keyword);
  }
}

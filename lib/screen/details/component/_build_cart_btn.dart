import 'package:flutter/material.dart';
import '../../cart/cart_page.dart';
import 'package:get/get.dart';

OutlinedButton btnAddToCart(BuildContext context, product) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          animationDuration: const Duration(seconds: 5),
          backgroundColor: product.color,
          side: const BorderSide(width: 1, color: Colors.white),
          padding: const EdgeInsets.all(10)),
      onPressed: () => Get.to(() => CartPage()),
      child: const Text(
        'ADD TO CART',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ));
}

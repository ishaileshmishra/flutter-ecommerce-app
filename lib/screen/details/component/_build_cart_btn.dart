import 'package:flutter/material.dart';
import '../../cart/cart_page.dart';
import 'package:get/get.dart';

OutlinedButton btnAddToCart(BuildContext context, product) {
  return OutlinedButton(
      child: Text(
        'ADD TO CART',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: OutlinedButton.styleFrom(
          animationDuration: Duration(seconds: 5),
          backgroundColor: product.color,
          side: BorderSide(width: 1, color: Colors.white),
          padding: EdgeInsets.all(10)),
      onPressed: () => Get.to(() => CartPage()));
}

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/Product.dart';
import 'package:flutter_ecommerce_app/screen/details/detail_page.dart';
import 'package:get/get.dart';

buildPopularCard(Product product) {
  return Padding(
      padding: const EdgeInsets.all(2),
      child: GestureDetector(
        onTap: () {
          Get.to(ProductDetail(product: product));
        },
        child: _productCard(product),
      ));
}

Card _productCard(Product product) {
  return Card(
    elevation: 8,
    color: product.color,
    child: GridTile(
      child: Column(
        children: [
          _imageIcon(product),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _title(product),
          ),
        ],
      ),
    ),
  );
}

Text _title(Product product) {
  return Text(
    product.title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Container _imageIcon(Product product) {
  return Container(
    height: 100,
    width: 120,
    padding: const EdgeInsets.all(20),
    child: Image.asset(
      product.image,
      fit: BoxFit.cover,
      height: 80,
      width: 80,
    ),
  );
}

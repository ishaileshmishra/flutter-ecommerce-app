import 'package:flutter/material.dart';

Image cardImage(product) {
  return Image.asset(
    product.image,
    width: 150,
    height: 180,
    fit: BoxFit.fill,
    color: product.color,
  );
}

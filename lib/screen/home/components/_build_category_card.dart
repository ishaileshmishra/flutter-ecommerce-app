import 'package:flutter/material.dart';
import '../../../components/_star_rating.dart' show showStarRating;
import '../../../models/Product.dart';

buildCard(Product product) {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Card(
      elevation: 4,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: GridTile(
          header: Padding(
            padding: const EdgeInsets.all(12),
            child: imageIcon(product),
          ),
          footer: _buildPriceRating(product),
          child: Container(),
        ),
      ),
    ),
  );
}

Padding _buildPriceRating(Product product) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titlePrice(product),
        const SizedBox(height: 8),
        showStarRating(3.0, product.color)
      ],
    ),
  );
}

Text description(Product product) {
  return Text(
    product.description,
    maxLines: 2,
  );
}

Row _titlePrice(Product product) {
  return Row(
    children: [
      Text(
        product.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(),
      Text(
        '\$ ${product.price}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      )
    ],
  );
}

Image imageIcon(Product product) {
  return Image.asset(
    product.image,
    fit: BoxFit.cover,
    height: 100,
    width: 100,
  );
}

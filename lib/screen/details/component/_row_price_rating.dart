import 'package:flutter/material.dart';

import '../../../components/_star_rating.dart';

Row buildRowPriceRating(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Price: \$${product.price}",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
      showStarRating(3.0, Colors.white)
    ],
  );
}

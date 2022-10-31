import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/Product.dart';
import 'component/_build_app_bar.dart';
import 'component/_build_cart_btn.dart';
import 'component/_image_view.dart';
import 'component/_row_price_rating.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailAppBar(product),
      body: Stack(
        children: [
          showImageView(context, product),
          const SizedBox(height: kSpace),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRowPriceRating(product),
                const SizedBox(height: kSpace),
                Text(
                  product.description,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                  maxLines: 5,
                ),
                const SizedBox(height: 20),
                Center(child: btnAddToCart(context, product)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

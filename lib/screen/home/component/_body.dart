import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/Product.dart';
import '_action_bar.dart';
import '_categories.dart';
import '_product_category.dart';
import '_search_filter_view.dart';

Column detailBody(List<Product> products, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      buildActionBar(),
      SizedBox(height: kSpace),
      buildSearchRow(),
      SizedBox(height: kSpace),
      section('Categories'),
      SizedBox(height: kSpace),
      Container(
        height: 140,
        child: category(products),
      ),
      SizedBox(height: kSpace),
      section('Most popular'),
      SizedBox(height: kSpace),
      Expanded(child: mostPopularCategory(context, products))
    ],
  );
}

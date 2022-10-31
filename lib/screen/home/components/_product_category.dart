import 'package:flutter/material.dart';
import '../../details/detail_page.dart';
import 'package:get/get.dart';

import '_build_category_card.dart';
import '_build_popular_card.dart';

ListView category(productList) {
  return ListView.builder(
      padding: const EdgeInsets.only(left: 0),
      itemCount: productList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {Get.to(ProductDetail)},
          child: buildPopularCard(productList[index]),
        );
      });
}

GridView mostPopularCategory(context, product) {
  return GridView.count(
    crossAxisCount: 2,
    children: List.generate(product.length, (index) {
      return GestureDetector(
        onTap: () => Get.to(ProductDetail(product: product[index])),
        child: buildCard(product[index]),
      );
    }),
  );
}

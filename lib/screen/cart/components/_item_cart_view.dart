import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/helper/_utils.dart';
import '_card_img.dart';

Card buildCartCard(product) {
  return Card(
    elevation: 4,
    margin: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          children: [
            cardImage(product),
            const SizedBox(width: kSpace),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: mediumText,
                  ),
                  Text(
                    "Cocktail dress",
                    style: smallText,
                  ),
                  Text("Size: XS", style: smallText),
                  Text(
                    "Color: Yellow",
                    style: smallText,
                  ),
                  const SizedBox(height: kSpace),
                  _cartPriceDescriptionRightToImg(product),
                ],
              ),
            )
          ],
        ),
        const Divider(color: Colors.grey),
        Padding(
          padding: const EdgeInsets.all(kSpace),
          child: Column(
            children: [
              _viewSubtotal(product),
              _viewDeliveryPrice(),
              _viewDiscountPrice(),
              _viewTotalPrice(product),
            ],
          ),
        )
      ],
    ),
  );
}

Row _cartPriceDescriptionRightToImg(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("\$ ${product.price}", style: mediumText),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.add_circle),
          const SizedBox(width: kSpace),
          Text("1", style: mediumText),
          const SizedBox(width: kSpace),
          const Icon(Icons.remove_circle),
        ],
      )
    ],
  );
}

Row _viewTotalPrice(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Total",
        style: mediumText,
      ),
      Text(
        "\$ ${product.price}",
        style: mediumText,
      ),
    ],
  );
}

Row _viewDiscountPrice() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Discount",
        style: smallText,
      ),
      Text(
        "No discount",
        style: smallText,
      ),
    ],
  );
}

Row _viewDeliveryPrice() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Delivery",
        style: smallText,
      ),
      Text(
        "\$0",
        style: smallText,
      ),
    ],
  );
}

Row _viewSubtotal(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Subtotal",
        style: smallText,
      ),
      Text(
        product.price,
        style: smallText,
      ),
    ],
  );
}

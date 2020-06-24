import 'package:flutter/material.dart';
import 'package:jin_ecomm/src/model/Product.dart';
import 'package:jin_ecomm/src/utils/resource.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Product> products = Res.fetchProducts();

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Products"),
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
      ),
      body: Container(
        child: getCardList(products)
      ),
    );
  }
}

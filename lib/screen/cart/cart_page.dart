import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/Product.dart';
import '../../models/_res_files.dart';
import 'components/_build_app_bar.dart';
import 'components/_item_cart_view.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Product> products;

  @override
  void initState() {
    super.initState();
    products = Res.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return buildCartCard(products[index]);
              },
            ),
          ),
        ));
  }
}

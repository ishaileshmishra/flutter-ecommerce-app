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
  @override
  Widget build(BuildContext context) {
    List<Product> products = Res.fetchProducts();
    return Scaffold(
        //backgroundColor: Colors.grey.shade200,
        appBar: buildAppBar(context),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return buildCartCard(products[index]);
            },
          ),
        ));
  }
}

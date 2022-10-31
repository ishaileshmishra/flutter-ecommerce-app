import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screen/home/components/_body.dart';
import '../../models/_res_files.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var products = Res.fetchProducts();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: detailBody(products, context),
        ),
      ),
    );
  }
}

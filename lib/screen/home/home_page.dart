import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/_body.dart';
import '../../models/_res_files.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var products = Res.fetchProducts();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: detailBody(products, context),
        ),
      ),
    );
  }
}

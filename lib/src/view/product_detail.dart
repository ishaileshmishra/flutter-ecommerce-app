import 'package:flutter/material.dart';
import 'package:jin_ecomm/src/model/Product.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        title: Text(
          product.title,
          style: mediumText,
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.add_shopping_cart, size: 30,),
          )
        ],
      ),
      body: Container(
        color: product.color,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  product.image,
                  alignment: Alignment.centerRight,
                  height: 400,
                )),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$${product.price}", style: largeText),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.white)
                          ),
                          onPressed: () => {},
                          //padding: EdgeInsets.all(40),
                          color: product.color,
                          child: Text(
                            "BUY",
                            style: mediumText,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    Text(product.title, style: largeText),
                    SizedBox(height: 20),
                    Text(product.description, style: smallText),
                    SizedBox(height: 20),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

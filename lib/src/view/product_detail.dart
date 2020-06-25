import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/model/Product.dart';
import 'package:jin_ecomm/src/utils/resource.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jin_ecomm/src/view/product_cart.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print("screenSize: $screenSize");
    print("screenHeight: ${screenSize.height}");
    print("screenWidth: ${screenSize.width}");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        title: Text(
          product.title,
          style: GoogleFonts.yatraOne(fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.add_shopping_cart,
              size: 30,
            ),
          )
        ],
      ),
      body: Container(
        color: product.color,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  product.image,
                  alignment: Alignment.centerRight,
                  height: (screenSize.height / 2),
                )),
            SizedBox(height: 20),
            Flexible(
              child: SingleChildScrollView(
                child: Container(
                  height: (screenSize.height / 2),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      buildRowPriceRating(),
                      SizedBox(height: 10),
                      Text(product.title, style: largeText),
                      SizedBox(height: 10),
                      Text(product.description, style: normalText),
                      SizedBox(height: 20),
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductCart(
                                        productList: Res.fetchProducts()))),
                          },
                          color: product.color,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "ADD TO CART",
                              style: GoogleFonts.ubuntu(
                                fontSize: 18
                              ),
                            ),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildRowPriceRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Price: \$${product.price}", style: largeText),
        RatingBarIndicator(
          rating: 3.75,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: product.color,
          ),
          itemCount: 5,
          itemSize: 25.0,
          direction: Axis.horizontal,
        ),
      ],
    );
  }
}

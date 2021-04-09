import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ecommerce_app/src/view/products/models/Product.dart';
import 'package:flutter_ecommerce_app/src/utils/StaticRes.dart';
import 'package:flutter_ecommerce_app/src/utils/TextUtility.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_ecommerce_app/src/view/cart/ProductCart.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = (screenSize.height) / 2;
    //var screenWidth = (screenSize.width) / 2;

    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          // container for the image of the product
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: product.color,
            child: Image.asset(
              product.image,
              alignment: Alignment.centerRight,
              height: screenHeight - 100,
            ),
          ),

          // provides vertical space of 10 pxl
          SizedBox(height: 10),

          // container for the price & detail contents of the product
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                buildRowPriceRating(),
                SizedBox(height: 10),
                Text(product.title, style: largeText),
                SizedBox(height: 10),
                Text(product.description, style: normalText),
                SizedBox(height: 20),
                Center(
                  child: buildAddToCartButton(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  RaisedButton buildAddToCartButton(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      onPressed: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProductCart(productList: Res.fetchProducts()))),
      },
      color: product.color,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "ADD TO CART",
          style: GoogleFonts.lato(fontSize: 15),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: product.color,
      title: Text(
        product.title,
        style: GoogleFonts.lato(fontSize: 22),
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

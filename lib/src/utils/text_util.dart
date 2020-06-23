import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/model/Product.dart';

TextStyle smallText = GoogleFonts.comicNeue(
  fontSize: 12,
  fontWeight: FontWeight.normal,
);

TextStyle mediumText = GoogleFonts.mandali(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle largeText = GoogleFonts.comicNeue(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

TextStyle extraLargeText = GoogleFonts.londrinaShadow(
  fontSize: 35,
  fontWeight: FontWeight.bold,
);

TextStyle xxLargeText = GoogleFonts.comicNeue(
  fontSize: 45,
);

ListView getCardList(List<Product> products) {
  return ListView.builder(
      itemCount: products.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          elevation: 0.0,
          margin: EdgeInsets.all(8),
          child: Container(
            width: 180,
            child: Column(
              children: [
                Image.asset(
                  products[index].image,
                  height: 200,
                  width: 250,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 5),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(products[index].title, style: mediumText),
                        CircleAvatar(
                          backgroundColor: products[index].color,
                          radius: 10,
                        )
                      ],
                    ))
              ],
            ),
          ),
        );
      });
}

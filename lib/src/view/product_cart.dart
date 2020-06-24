import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/model/Product.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';
import 'package:jin_ecomm/src/view/payment_gateway.dart';

class ProductCart extends StatelessWidget {
  ProductCart({Key key, this.productList}) : super(key: key);

  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: ()=> Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        title: Text("Cart",
            style: GoogleFonts.aladin(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Items", style: largeText),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentGateway())),
                  },
                  color: productList[3].color,
                  child: Text(
                    "Checkout",
                    style: mediumText,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: productList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.grey.shade100,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    this.productList[index].image,
                                    width: 150,
                                    height: 180,
                                    fit: BoxFit.fill,
                                    color: this.productList[index].color,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          this.productList[index].title,
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
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$ ${productList[index].price}",
                                              style: mediumText,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(Icons.add_circle),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "1",
                                                  style: mediumText,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(Icons.remove_circle),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Subtotal",
                                        style: smallText,
                                      ),
                                      Text(
                                        productList[index].price,
                                        style: smallText,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: mediumText,
                                      ),
                                      Text(
                                        "\$ ${productList[index].price}",
                                        style: mediumText,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

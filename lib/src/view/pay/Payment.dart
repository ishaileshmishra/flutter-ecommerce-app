import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/utils/TextUtility.dart';

class PaymentGateway extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PayCard> _getPaymentCards() {
      List<PayCard> cards = [];
      cards.add(new PayCard(
          title: "Net Banking",
          description: "Pay bill using card",
          image: "assets/images/paycard.png"));
      cards.add(new PayCard(
          title: "Credit Card",
          description: "Pay bill using card",
          image: "assets/images/paycard.png"));
      cards.add(new PayCard(
          title: "Debit Card",
          description: "Pay bill using card",
          image: "assets/images/paycard.png"));
      cards.add(new PayCard(
          title: "Wallet pay",
          description: "Pay bill using card",
          image: "assets/images/paycard.png"));
      return cards;
    }

    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: _getPaymentCards().length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.grey.shade400,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _getPaymentCards()[index].title,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Pay bill using ${_getPaymentCards()[index].title}",
                                      style: smallText,
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.pink,
                                  child: Image.asset(
                                      _getPaymentCards()[index].image),
                                )
                              ],
                            )),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey.shade200,
      title: Text(
        "PAYMENT",
        style: GoogleFonts.lato(
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () => {Navigator.pop(context)},
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black38,
          )),
    );
  }
}

class PayCard {
  String title;
  String description;
  String image;

  PayCard({this.title, this.description, this.image});
}

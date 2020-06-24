import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        title: Text("Payment gateway", style: GoogleFonts.alatsi(
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        leading: GestureDetector(
          onTap: ()=>{
            Navigator.pop(context)
          },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: _getPaymentCards().length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _getPaymentCards()[index].title,
                                    style: largeText,
                                  ),
                                  Text(
                                    "Pay bill using ${_getPaymentCards()[index].title}",
                                    style: smallText,
                                  ),
                                ],
                              ),

                              CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.pink,
                                child: Image.asset(_getPaymentCards()[index].image),
                              )

                            ],
                          )
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class PayCard {
  String title;
  String description;
  String image;

  PayCard({this.title, this.description, this.image});
}

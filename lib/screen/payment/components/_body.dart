import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/helper/_utils.dart';
import 'package:flutter_ecommerce_app/models/_payment_cart_model.dart';

Container returnBody(payemnts) {
  return Container(
    padding: EdgeInsets.all(20),
    child: ListView.builder(
        itemCount: payemnts.length,
        itemBuilder: (context, index) {
          return _paycardView(payemnts[index]);
        }),
  );
}

Card _paycardView(PayCard payemnt) {
  return Card(
    color: Colors.grey.shade400,
    child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  payemnt.title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Pay bill using ${payemnt.title}",
                  style: smallText,
                ),
              ],
            ),
            imgThumbnail(payemnt)
          ],
        )),
  );
}

CircleAvatar imgThumbnail(PayCard payemnt) {
  return CircleAvatar(
    radius: 20,
    backgroundColor: Colors.pink,
    child: Image.asset(payemnt.image),
  );
}

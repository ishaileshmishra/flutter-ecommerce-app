import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/_payment_cart_model.dart';
import '../../models/_res_files.dart';
import 'components/_body.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PayCard> payemnts = Res.getPaymentTypes();
    payemnts.forEach((element) {
      print(element.title);
    });
    return Scaffold(
      appBar: payActionbar(),
      body: Column(
        children: [
          creditcardImage(),
          choosePaymentType(),
        ],
      ),
    );
  }
}

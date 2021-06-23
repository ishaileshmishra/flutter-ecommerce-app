import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screen/payment/components/_view_app_bar.dart';

import '../../models/_payment_cart_model.dart';
import '../../models/_res_files.dart';
import 'components/_body.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PayCard> payemnts = Res.getPaymentTypes();
    return Scaffold(appBar: gatewayAppBar(context), body: returnBody(payemnts));
  }
}

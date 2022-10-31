import 'package:flutter_ecommerce_app/components/_close_activity.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../payment/payment_page.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: closeActivity(),
    title: const Text("Cart", style: TextStyle(color: Colors.black)),
    backgroundColor: Colors.grey.shade100,
    actions: [
      Container(
        padding: const EdgeInsets.all(10),
        child: buildGoPaymentBtn(context),
      ),
    ],
  );
}

OutlinedButton buildGoPaymentBtn(BuildContext context) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          animationDuration: const Duration(seconds: 5), padding: const EdgeInsets.all(10)),
      onPressed: () => Get.to(() => PaymentPage()),
      child: const Text('Payment'));
}

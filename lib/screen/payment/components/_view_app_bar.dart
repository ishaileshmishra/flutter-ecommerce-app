import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/_close_activity.dart';

AppBar gatewayAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey.shade200,
    title: Text(
      "Payment gateway",
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    leading: closeActivity(),
  );
}

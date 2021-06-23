import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:get/get.dart';

AppBar buildAppBar(product) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey.shade300,
    title: Text(
      'Payement gateway',
      style: TextStyle(color: Colors.black),
    ),
    leading: GestureDetector(
      onTap: () => Get.back(),
      child: Icon(
        CupertinoIcons.back,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: kSpace),
        child: Icon(
          CupertinoIcons.cart,
          size: 30,
          color: Colors.black,
        ),
      )
    ],
  );
}

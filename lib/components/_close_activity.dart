import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container closeActivity() {
  return Container(
    child: GestureDetector(
      onTap: () => Get.back(),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(
          child: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

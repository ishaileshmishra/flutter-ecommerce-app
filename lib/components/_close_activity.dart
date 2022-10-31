import 'package:flutter/material.dart';
import 'package:get/get.dart';

GestureDetector closeActivity() {
  return GestureDetector(
    onTap: () => Get.back(),
    child: const Padding(
      padding: EdgeInsets.all(10),
      child: CircleAvatar(
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    ),
  );
}

const borderRadius = BorderRadius.all(
  Radius.circular(10.0),
);

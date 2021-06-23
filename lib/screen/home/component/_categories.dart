import 'package:flutter/material.dart';

Row section(title) {
  return Row(
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      Icon(Icons.arrow_forward)
    ],
  );
}

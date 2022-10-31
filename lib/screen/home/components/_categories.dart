import 'package:flutter/material.dart';

Row section(title) {
  return Row(
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const Spacer(),
      const Icon(Icons.arrow_forward)
    ],
  );
}

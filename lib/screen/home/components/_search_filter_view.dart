import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/_close_activity.dart';

Row buildSearchRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(child: _showTextField()),
      const SizedBox(width: 20),
      Container(
        color: Colors.grey.shade300,
        height: 45,
        width: 45,
        child: _buildFilterBtn(),
      ),
    ],
  );
}

_showTextField() {
  return TextField(
    decoration: InputDecoration(
        suffixIcon: const Icon(Icons.search),
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        border: const OutlineInputBorder(
          gapPadding: 8,
          borderRadius: borderRadius,
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[800]),
        hintText: "Search products",
        fillColor: Colors.grey.shade300),
  );
}

IconButton _buildFilterBtn() {
  return IconButton(
    alignment: Alignment.center,
    icon: const Icon(CupertinoIcons.sort_down, size: 20),
    onPressed: () => print("Filter clicked"),
    tooltip: "Filter",
    iconSize: 35,
    padding: const EdgeInsets.all(10),
    color: Colors.teal,
  );
}

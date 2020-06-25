import 'package:flutter/material.dart';

class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({Key key, s}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        onTap: () {
          print('Search tapped');
        },
        keyboardType: TextInputType.text,
        autofocus: false,
        style:
        new TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        decoration: new InputDecoration(
            contentPadding:
            new EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
            labelText: "Search products",
            fillColor: Colors.grey.shade200,
            suffixIcon: Icon(Icons.search),
            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(8.0), gapPadding: 12),
            enabledBorder: InputBorder.none,
            filled: true),
        validator: (val) {
          if (val.length == 0) {
            return "Search field cannot be empty";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
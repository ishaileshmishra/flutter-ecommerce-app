import 'package:flutter/material.dart';
import 'package:jin_ecomm/src/view/home/HomePage.dart';

void main() {
  runApp(EcommApp());
}

class EcommApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Login'),
    );
  }
}

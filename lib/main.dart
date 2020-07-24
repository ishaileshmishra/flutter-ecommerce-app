import 'package:flutter/material.dart';
import 'package:jin_ecomm/src/view/home_page.dart';

void main() {
  runApp(EcommApp());
}

class EcommApp extends StatelessWidget {
  // This widget is the root of your application.
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

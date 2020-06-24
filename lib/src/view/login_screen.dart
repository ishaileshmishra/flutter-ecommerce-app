import 'package:flutter/material.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: mediumText,),
        centerTitle: true,
      ),
    );
  }
}

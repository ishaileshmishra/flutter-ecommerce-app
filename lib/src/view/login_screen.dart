import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Login", style: mediumText,),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Icon(
                Icons.arrow_back_ios
            ),
          ),
        ),
      ),*/
      body: Container(
          child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        //child: buildCloseContainer(context),

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildCloseContainer(context),
            SizedBox(
              height: 120,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              style: new TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.white),
              decoration: new InputDecoration(
                  contentPadding:
                      new EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                  labelText: "E-mail",
                  fillColor: Colors.grey.shade200,
                  prefixIcon: Container(
                      color: Colors.teal,
                      child: Icon(
                        Icons.email,
                        color: Colors.white,
                      )),
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      gapPadding: 12),
                  enabledBorder: InputBorder.none,
                  filled: true),
              validator: (val) {
                if (val.length == 0) {
                  return "E-mail field cannot be empty";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              style: new TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.white),
              decoration: new InputDecoration(
                  contentPadding:
                      new EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                  labelText: "Password",
                  fillColor: Colors.grey.shade200,
                  prefixIcon: Container(
                      color: Colors.teal,
                      child: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      )),
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      gapPadding: 12),
                  enabledBorder: InputBorder.none,
                  filled: true),
              validator: (val) {
                if (val.length == 0) {
                  return "Password field cannot be empty";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              onPressed: () => {
              },
              color: Colors.white,
              child: Text(
                "Sign In",
                style: mediumText,
              ),
            ),
          ],
        ),
      )),
    );
  }

  Container buildCloseContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      alignment: Alignment.topRight,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: GestureDetector(
          onTap: () => {Navigator.pop(context)},
          child: Icon(
            Icons.close,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class EmailWidget {}

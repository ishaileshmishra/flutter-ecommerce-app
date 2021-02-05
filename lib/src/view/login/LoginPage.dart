import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jin_ecomm/src/utils/CustomInputField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              child: Icon(Icons.close),
            ),
          )
        ],
      ),
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              widthFactor: 0.6,
              heightFactor: 0.6,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/sofa.png',
                            width: 80,
                            height: 80,
                          ),
                        )),
                    CustomInputField(
                      Icon(
                        Icons.person,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                      'Username',
                    ),
                    CustomInputField(
                        Icon(Icons.lock, color: Colors.redAccent, size: 30),
                        'Password'),
                    Container(
                      width: 150,
                      child: RaisedButton(
                        onPressed: () {
                          print('Tapped');
                        },
                        elevation: 5,
                        padding: EdgeInsets.all(10),
                        color: Colors.pink,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

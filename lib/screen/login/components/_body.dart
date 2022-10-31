import 'package:flutter/material.dart';
import '../../../components/_input_fields.dart';
import '../../../constant.dart';
import '../../../components/_close_activity.dart';
import 'package:get/get.dart';

Stack loginBody(context) {
  final deviceWidth = MediaQuery.of(context).size.width;

  return Stack(
    children: <Widget>[
      Container(decoration: boxGradientDecoration()),
      SafeArea(
          child: GestureDetector(
        onTap: () => Get.back(),
        child: closeActivity(),
      )),
      Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _iconThumbnail(),
              const SizedBox(height: kSpace),
              SizedBox(
                width: deviceWidth * .80,
                child: imputFieldLogin('Username'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: deviceWidth * .80,
                child: imputFieldLogin('Password'),
              ),
              const SizedBox(height: 20),
              Container(
                width: (deviceWidth * .50) * .50,
                color: Colors.white,
                height: 45,
                child: OutlinedButton(
                  //onPressed: () => print('Login btn tapped'),
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

BoxDecoration boxGradientDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
        colors: [
          kPrimaryColor,
          kPrimaryLightColor,
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );
}

CustomInputField imputFieldLogin(field) {
  return CustomInputField(
    null,
    const Icon(
      Icons.person,
      color: Colors.redAccent,
      size: 30,
    ),
    field,
  );
}

Image _iconThumbnail() {
  return Image.asset(
    'assets/images/sofa.png',
    width: 150,
    height: 150,
  );
}

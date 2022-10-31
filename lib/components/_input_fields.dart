import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final Icon fieldIcon;
  final String hintText;

  const CustomInputField(
    Key? key,
    this.fieldIcon,
    this.hintText,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Material(
        elevation: 5.0,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: fieldIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: Colors.amber,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

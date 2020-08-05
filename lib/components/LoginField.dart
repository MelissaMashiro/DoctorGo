import 'package:flutter/material.dart';

import '../constants.dart';

class MyLoginField extends StatelessWidget {
  MyLoginField(
      {this.keyboardType,
      @required this.hintText,
      this.icon,
      this.onChanged,
      this.obscureText,
      this.backgroundColor});

  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final Function onChanged;
  final bool obscureText;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        style: TextStyle(color: Colors.grey),
        cursorColor: Colors.white,
        onChanged: onChanged,
        obscureText: obscureText,
        textAlign: TextAlign.center,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: Icon(
              icon,
              color: kColorDoctor,
            )),
      ),
    );
  }
}

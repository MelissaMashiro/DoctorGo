import 'package:flutter/material.dart';

import '../constants.dart';

class MyLoginField extends StatelessWidget {
  MyLoginField(
      {this.keyboardType,
      @required this.hintText,
      this.icon,
      this.onChanged,
      obscureText});

  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final Function onChanged;
  final bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF282F3F), borderRadius: BorderRadius.circular(10)),
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
              color: kBlueDoctor,
            )),
      ),
    );
  }
}

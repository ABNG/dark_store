import 'package:flutter/material.dart';
import 'package:flutter_dark_store/utils/SizeConfig.dart';

class ReusableTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool main;

  ReusableTextField({this.text, this.icon, this.main});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.08,
        vertical: 10,
      ),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2,
              spreadRadius: 2,
            )
          ]),
      child: TextField(
        cursorColor: Colors.grey[300],
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey[300],
            fontSize: 16,
          ),
          border: InputBorder.none,
          prefixIcon: main
              ? Icon(
                  icon,
                  color: Colors.grey[300],
                )
              : null,
          suffixIcon: main
              ? null
              : Icon(
                  icon,
                  color: Colors.grey[300],
                ),
        ),
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

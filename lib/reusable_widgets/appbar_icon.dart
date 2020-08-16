import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
  final Function pressMe;

  AppbarIcon({this.pressMe});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: pressMe,
      icon: Icon(
        Icons.account_box,
        color: Colors.black,
      ),
    );
  }
}

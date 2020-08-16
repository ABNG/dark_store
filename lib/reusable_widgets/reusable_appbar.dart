import 'package:flutter/material.dart';

import 'appbar_icon.dart';

class ReusableAppbar extends StatelessWidget {
  final String title;
  final Function pressMe;
  final body;

  ReusableAppbar({this.title, this.pressMe, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          AppbarIcon(
            pressMe: pressMe,
          )
        ],
      ),
      body: body,
    );
  }
}

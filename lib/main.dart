import 'package:flutter/material.dart';
import 'package:flutter_dark_store/app_screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.grey[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
      ),
      home: LogInScreen(),
    );
  }
}

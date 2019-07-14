import 'package:flutter/material.dart';
import 'package:vertical_menu/src/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF33334C),
        accentColor: Color(0xFFD64A73),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.white,
          actionsIconTheme: IconThemeData(
            color: Color(0xFF33334C),
          ),
          textTheme: TextTheme(
            title: TextStyle(
              color: Color(0xFF33334C),
            ),
          ),
          iconTheme: IconThemeData(color: Color(0xFF33334C)),
        ),
      ),
      home: HomeModule(),
    );
  }
}

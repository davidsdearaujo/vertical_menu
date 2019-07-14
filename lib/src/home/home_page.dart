import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../shared/widgets/vertical_menu/vertical_menu_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return VerticalMenuWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

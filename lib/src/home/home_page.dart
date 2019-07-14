import 'package:flutter/material.dart';

import '../shared/widgets/vertical_menu/vertical_menu_model.dart';
import '../shared/widgets/vertical_menu/vertical_menu_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VerticalMenuController drawerController;

  @override
  void initState() {
    super.initState();
    drawerController = VerticalMenuController();
  }

  @override
  void dispose() {
    drawerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VerticalMenuWidget(
      controller: drawerController,
      pages: [
        VerticalMenuModel(
          icon: Icons.mic,
          pageBuilder: (context) => Container(),
        ),
        VerticalMenuModel(
          icon: Icons.local_drink,
          pageBuilder: (context) => Container(),
        ),
        VerticalMenuModel(
          icon: Icons.video_call,
          pageBuilder: (context) => Container(),
        ),
        VerticalMenuModel(
          icon: Icons.change_history,
          pageBuilder: (context) => Container(),
        ),
        VerticalMenuModel(
          icon: Icons.casino,
          pageBuilder: (context) => Container(),
        ),
        VerticalMenuModel(
          icon: Icons.image_aspect_ratio,
          pageBuilder: (context) => Container(),
        ),
        VerticalMenuModel(
          icon: Icons.book,
          pageBuilder: (context) => Container(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: drawerController.toggle,
          ),
        ),
        body: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

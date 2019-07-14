import 'package:flutter/material.dart';

class VerticalMenuModel {
  IconData icon;
  Widget Function(BuildContext context) pageBuilder;

  VerticalMenuModel({
    @required this.icon,
    @required this.pageBuilder,
  });
}

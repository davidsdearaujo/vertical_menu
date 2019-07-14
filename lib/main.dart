import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vertical_menu/src/app_module.dart';
import 'dart:io' show Platform;

//"Não existe nada mais permanente do que uma gambiarra temporária." ~Deivão 1:9
void main() {
  _setTargetPlatformForDesktop();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(AppModule());
}
void _setTargetPlatformForDesktop() {
  TargetPlatform targetPlatform;
  if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.fuchsia;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}

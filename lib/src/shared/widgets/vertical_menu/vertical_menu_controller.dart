import 'package:flutter/animation.dart';

class VerticalMenuController{
  AnimationController animation;

  void toggle() {
    open();
    close();
  }

  void open() {
    if (animation?.value == 0) animation?.forward();
  }

  void close(){
    if (animation?.value == 1) animation?.reverse();
  }

  bool get isOpen => (animation?.value == 1) ?? false;

  void dispose(){
    animation.dispose();
  }
}
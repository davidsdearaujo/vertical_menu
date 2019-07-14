import 'package:flutter/material.dart';

import '../menu_item/menu_item_widget.dart';
import 'vertical_menu_controller.dart';

export 'vertical_menu_controller.dart';

class VerticalMenuWidget extends StatelessWidget {
  final Widget child;
  final VerticalMenuController controller;

  const VerticalMenuWidget({
    Key key,
    this.child,
    @required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        AnimatedBuilder(
          animation: controller.animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0,0),
              child: child,
            );
          },
          child: Offstage(
            offstage: controller.isOpen,
            child: Column(
              children: [
                MenuItemWidget(
                  icon: Icons.close,
                  action: () {},
                  closeButtom: true,
                ),
                MenuItemWidget(
                  icon: Icons.mic,
                  action: () {},
                ),
                MenuItemWidget(
                  icon: Icons.local_drink,
                  action: () {},
                ),
                MenuItemWidget(
                  icon: Icons.video_call,
                  action: () {},
                ),
                MenuItemWidget(
                  icon: Icons.change_history,
                  action: () {},
                ),
                MenuItemWidget(
                  icon: Icons.casino,
                  action: () {},
                ),
                MenuItemWidget(
                  icon: Icons.image_aspect_ratio,
                  action: () {},
                ),
                MenuItemWidget(
                  icon: Icons.book,
                  action: () {},
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../menu_item/menu_item_widget.dart';

class VerticalMenuWidget extends StatelessWidget {
  final Widget child;

  const VerticalMenuWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
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
        child,
      ],
    );
  }
}

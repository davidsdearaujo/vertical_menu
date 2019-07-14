import 'package:flutter/cupertino.dart';

import '../../../app_module.dart';
import 'vertical_menu_bloc.dart';
import 'vertical_menu_controller.dart';

mixin VerticalMenuAnimation<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  VerticalMenuController get controller;

  final bloc = AppModule.to.bloc<VerticalMenuBloc>();
  List<Animation<double>> buttonAnimations;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller.animation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    bloc.itemsController.listen((lenght) {
      buttonAnimations = List.generate(
        lenght,
        (index) {
          return Tween<double>(
            begin: -MediaQuery.of(context).size.height / (lenght-1),
            end: 0,
          ).animate(
            CurvedAnimation(
              parent: controller.animation,
              curve: Interval(
                index / lenght,
                (index + 1) / lenght,
              ),
            ),
          );
        },
      );
    });
  }
}

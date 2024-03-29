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

    bloc.itemsLenghtController.listen((lenght) {
      buttonAnimations = List.generate(
        lenght,
        (index) {
          var startAnimation = index / lenght;
          var endAnimation = (index + 1) / lenght + (1 / lenght * 2);
          endAnimation = endAnimation > 1 ?1 : endAnimation;
          return Tween<double>(
            begin: 1,
            end: 0,
          ).animate(
            CurvedAnimation(
              parent: controller.animation,
              curve: Interval(
                startAnimation,
                endAnimation,
              ),
            ),
          );
        },
      );
    });
  }
}

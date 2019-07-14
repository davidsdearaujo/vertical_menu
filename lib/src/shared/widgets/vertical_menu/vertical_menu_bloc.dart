import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

import 'vertical_menu_model.dart';

class VerticalMenuBloc extends BlocBase {
  var itemsController = BehaviorSubject<int>();

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    itemsController.close();
    super.dispose();
  }
}

import 'package:mobx/mobx.dart';

part 'orders_controller.g.dart';

class OrdersController = _OrdersControllerBase with _$OrdersController;

abstract class _OrdersControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

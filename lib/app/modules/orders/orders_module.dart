import 'package:food_app/app/modules/orders/orders_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:food_app/app/modules/orders/orders_page.dart';

class OrdersModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OrdersController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => OrdersPage()),
      ];

  static Inject get to => Inject<OrdersModule>.of();
}

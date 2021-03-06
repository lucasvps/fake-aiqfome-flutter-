import 'package:food_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:food_app/app/app_widget.dart';
import 'package:food_app/app/modules/home/home_module.dart';
import 'package:food_app/app/modules/orders/orders_module.dart';

import 'modules/home/places/places_module.dart';



class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/list', module: PlacesModule()),
        Router('/orders', module: OrdersModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

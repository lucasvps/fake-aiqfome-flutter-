import 'package:food_app/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PlacesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [];

  static Inject get to => Inject<PlacesModule>.of();
}

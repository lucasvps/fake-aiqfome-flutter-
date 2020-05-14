import 'package:food_app/app/models/restaurant_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  static String imgUrl = 'https://user-images.strikinglycdn.com/res/hrscywv4p/image/upload/c_limit,fl_lossy,h_630,w_1200,f_auto,q_auto/43135/343740_576001.png';
  static String imgUrl2 = 'https://image.freepik.com/psd-gratuitas/pizza-comida-menu-promocao-midia-social-instagram-post-banner-modelo_159024-30.jpg';



  List<RestaurantModel> list = [
    RestaurantModel('4.8', '21:30', 10.0, "Lanches", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 2", '7:00', imgUrl),   
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 3", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 4", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 5", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 6", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 7", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 8", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 9", '7:00', imgUrl),
    RestaurantModel('4.8', '21:30', 10.0, "Lanches 10", '7:00', imgUrl),
  ];

  List<RestaurantModel> list2 = [
    RestaurantModel('4.8', '21:30', 10.0, "Promo", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 2", '7:00', imgUrl2),   
    RestaurantModel('4.8', '21:30', 10.0, "Promo 3", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 4", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 5", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 6", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 7", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 8", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 9", '7:00', imgUrl2),
    RestaurantModel('4.8', '21:30', 10.0, "Promo 10", '7:00', imgUrl2),
  ];



}

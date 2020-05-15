import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:food_app/app/widgets/order.dart';
import 'orders_controller.dart';

class OrdersPage extends StatefulWidget {
  final String title;
  const OrdersPage({Key key, this.title = "Orders"}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends ModularState<OrdersPage, OrdersController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          backgroundColor: Colors.white,
          title: Text(
            'meus pedidos',
            style: TextStyle(color: Colors.deepPurple),
          ),
        ),
        body: Container(
          color: Color(0xfff3f3f3),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[200],
                width: double.maxFinite,
                child: Text('UHUL! você tem 5 pedidos no aiqfome!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.deepPurple)),
                
              ),
              OrderWidget(
                  dateTime: '30/04 - 18:39',
                  orderSeen: '18:41',
                  deliveryTime: '19:10',
                  avaliation: '5.0/5.0'),
              OrderWidget(
                  dateTime: '01/05 - 20:11',
                  orderSeen: '20:15',
                  deliveryTime: '21:10',
                  avaliation: '5.0/5.0'),
              OrderWidget(
                  dateTime: '01/05 - 20:11',
                  orderSeen: '20:15',
                  deliveryTime: '21:10',
                  avaliation: '5.0/5.0'),
              OrderWidget(
                  dateTime: '01/05 - 20:11',
                  orderSeen: '20:15',
                  deliveryTime: '21:10',
                  avaliation: '5.0/5.0'),
                  OrderWidget(
                  dateTime: '30/04 - 18:39',
                  orderSeen: '18:41',
                  deliveryTime: '19:10',
                  avaliation: '5.0/5.0'),
            ],
          ),
        ));
  }
}

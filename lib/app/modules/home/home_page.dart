import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:food_app/app/widgets/circle.dart';
import 'package:food_app/app/widgets/listView.dart';
import 'package:food_app/app/widgets/titles.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.filter_list),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
          title: Text(widget.title),
        ),
        body: Container(
          
          width: double.maxFinite,
          child: Column(
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                          CircleFood(
                              icon: Icons.local_pizza, type: 'Pizza', size: 40),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              TitleWidget(
                text: 'novos!',
              ),
              CustomListView(
                list: controller.list,
              ),
              TitleWidget(
                text: 'entrega free + promo',
              ),
              CustomListView(list: controller.list2),
              // TitleWidget(
              //   text: 'mais um teste rapazeada',
              // ),
              // CustomListView(list: controller.list)
            ],
          ),
        ));
  }
}

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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
            child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png'))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'oi Lucas',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            'fominha há 3 semanas',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '4 pedidos',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Modular.to.pushNamed('/orders');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.fastfood,
                    color: Colors.white,
                  ),
                  title: Text(
                    'pedidos',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )),
        drawerScrimColor: Colors.white54,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.filter_list),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.deepPurple,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          iconTheme: IconThemeData(color: Colors.deepPurple),
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
          title: Text(
            'AIQFOME LAYOUT',
            style: TextStyle(color: Colors.deepPurple),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xfff3f3f3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleFood(
                                icon: Icons.local_pizza, type: 'Pizza', size: 40),
                            CircleFood(
                                icon: Icons.fastfood, type: 'Lanches', size: 35),
                            CircleFood(
                                icon: Icons.local_pizza, type: 'Pizza', size: 40),
                            CircleFood(
                                icon: Icons.fastfood, type: 'Lanches', size: 35),
                            CircleFood(
                                icon: Icons.local_pizza, type: 'Pizza', size: 40),
                            CircleFood(
                                icon: Icons.fastfood, type: 'Lanches', size: 35),
                            CircleFood(
                                icon: Icons.local_pizza, type: 'Pizza', size: 40),
                            CircleFood(
                                icon: Icons.fastfood, type: 'Lanches', size: 35),
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
                  list: controller.list,
                ),
                CustomListView(
                  list: controller.list,
                ),
                TitleWidget(
                  text: 'entrega free + promo',
                  list: controller.list2,
                ),
                CustomListView(list: controller.list2),
                TitleWidget(
                  text: 'fechados',
                  list: controller.list3,
                ),
                CustomListView(list: controller.list3),
              ],
            ),
          ),
        ));
  }
}

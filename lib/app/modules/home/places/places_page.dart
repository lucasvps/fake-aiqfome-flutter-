import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:food_app/app/models/restaurant_model.dart';
import 'package:food_app/app/modules/home/home_controller.dart';

class ListPlaces extends StatefulWidget {
  ListPlaces({Key key, this.list, this.title}) : super(key: key);
  final List<RestaurantModel> list;
  final String title;

  @override
  _ListPlacesState createState() => _ListPlacesState();
}

class _ListPlacesState extends ModularState<ListPlaces, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.list.length,
          itemBuilder: (BuildContext context, int index) {
            var list = widget.list;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.grey.withOpacity(10),
                //height: MediaQuery.of(context).size.height * 0.12,
                child: Card(
                  //color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Container(
                          //color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 18, 8, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    list[index].name,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.deepPurple),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text('fecha às ${list[index].closeTime}'),
                                SizedBox(height: 10),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 8),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration:
                                            BoxDecoration(color: Colors.yellow),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(list[index].avaliation,
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                            SizedBox(width: 2),
                                            Icon(Icons.star,
                                                size: 15, color: Colors.grey)
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.lightGreenAccent),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Icon(
                                              Icons.motorcycle,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'R\$ ${list[index].deliveryPrice.toString()}',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.32,
                              height: MediaQuery.of(context).size.height * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(list[index].img))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

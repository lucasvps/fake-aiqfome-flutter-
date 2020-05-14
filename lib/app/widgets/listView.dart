import 'package:flutter/material.dart';
import 'package:food_app/app/modules/home/home_controller.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({Key key, this.list}) : super(key: key);
  final List list;


  @override
  _CustomListViewState createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (BuildContext context, int index) {
          var list = widget.list;
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(list[index].img))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      list[index].name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    'fecha às ${list[index].closeTime}',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ));
        },
      ),
    );
  }
}

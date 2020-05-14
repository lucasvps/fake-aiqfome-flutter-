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
      //color: Colors.blue,
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (BuildContext context, int index) {
          var list = widget.list;
          return Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(list[index].img))),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          
                          list[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Text(
                      'fecha às ${list[index].closeTime}',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}

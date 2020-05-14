import 'package:flutter/material.dart';
import 'package:food_app/app/models/restaurant_model.dart';
import 'package:food_app/app/modules/home/places/places_page.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key key, this.text, this.list}) : super(key: key);
  final String text;
  final List<RestaurantModel> list;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 22, color: Colors.deepPurple),
            ),
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPlaces(list: list, title: text,)),
                  );
                })
          ],
        ));
  }
}

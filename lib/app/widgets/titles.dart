import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key key, this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 20),
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            ),
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.deepPurple,
                ),
                onPressed: null)
          ],
        ));
  }
}

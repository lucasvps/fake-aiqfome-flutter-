import 'package:flutter/material.dart';

class CircleFood extends StatelessWidget {
  const CircleFood({Key key, this.icon, this.type, this.size}) : super(key: key);
  final IconData icon;
  final String type;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Icon(
              icon,
              color: Colors.deepPurple,
              size: size,
            ),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Text(
          type,
          style: TextStyle(color: Colors.deepPurple),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget(
      {Key key,
      this.dateTime,
      this.orderSeen,
      this.deliveryTime,
      this.avaliation})
      : super(key: key);
  final String dateTime;
  final String orderSeen;
  final String deliveryTime;
  final String avaliation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 8, 0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('3829189 - Smash Burguer',
                      style: TextStyle(color: Colors.deepPurple))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 8, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      size: 15,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text('01/05 - 20:11', style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Icon(
                      Icons.visibility,
                      size: 15,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text('20:15', style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Icon(
                      Icons.motorcycle,
                      size: 15,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text('21:10', style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Icon(
                      Icons.star_border,
                      size: 15,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text('5.0/5.0', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            //SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 0, 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'pago online',
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff37b4ad),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

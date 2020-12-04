import 'package:flutter/material.dart';

class AvaNamePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(3),
              child: Text(
                'Emil Urazbaev',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Text(
                '+7999999999',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

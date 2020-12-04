import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color buttonColor;
  final String text;
  OperationButton({this.icon, this.buttonColor, this.iconColor, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(children: [
        Container(
          width: 60,
          height: 60,
          child: MaterialButton(
            elevation: 0,
            shape: CircleBorder(),
            child: Icon(
              icon,
              color: iconColor,
            ),
            color: buttonColor, //Color.fromRGBO(243, 243, 254, 1.0),
            onPressed: () {},
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(text, style: TextStyle(fontSize: 13)))
      ]),
    );
  }
}

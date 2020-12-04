import 'package:flutter/material.dart';

import 'widgets/ava_name_phone.dart';
import 'widgets/balance_and_operations/balance_operations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Icon(Icons.menu),
      actions: [
        Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Icon(Icons.notifications)),
        Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Icon(Icons.more_vert))
      ],
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(251, 243, 231, 1.0)),
              ),
              ClipPath(
                clipper: TopClipper(),
                child: Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(247, 129, 35, 1.0),
                      Color.fromRGBO(250, 198, 83, 1.0)
                    ]), //0xf78123   0xfac653
                  ),
                ),
              ),
              Positioned(
                top: kToolbarHeight + 50,
                left: 20,
                child: AvaNamePhone(),
              ),
              Positioned(top: kToolbarHeight + 130, child: BalanceOperations()),
            ],
          ),
        ],
      ),
    );
  }
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

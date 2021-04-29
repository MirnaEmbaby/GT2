import 'package:flutter/material.dart';
import 'package:task2/screen1.dart';

void main() {
  runApp(MyApp());
}

Color c = Color.fromRGBO(92, 52, 53, 1);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        child: MyHomePage(),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String avatar = "assets/images/circleAvatar.png";

  @override
  Widget build(BuildContext context) {
    return Screen1(c, avatar);
  }
}

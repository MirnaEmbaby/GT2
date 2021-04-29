import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  Color c = Color.fromRGBO(92, 52, 53, 1);
  final String t;

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  Screen(this.t);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 247, 1),
      child: Stack(
        children: [
          Image.asset("assets/images/tb.jpeg"),
          Container(
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Text(
              t,
              style: TextStyle(
                fontSize: 20,
                color: c,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 50),
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () => selectScreen(context),
            ),
          )
        ],
      ),
    );
  }
}

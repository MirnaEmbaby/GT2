import 'package:flutter/material.dart';
import 'package:task2/Screen1TF.dart';

class Data extends StatelessWidget {
  final Color c;
  String title1 = "رقم الجوال";
  String title2 = "اسم المستخدم";
  TextInputType tit1 = TextInputType.number;
  TextInputType tit2 = TextInputType.text;

  Data(this.c);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 5),
      //alignment: Alignment.topRight,
      child: Column(
        children: [
          TF(c, title1, tit1),
          SizedBox(
            height: 15,
          ),
          TF(c, title2, tit2),
        ],
      ),
    );
  }
}

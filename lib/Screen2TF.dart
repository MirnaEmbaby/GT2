import 'package:flutter/material.dart';

class TF extends StatefulWidget {
  final String t;

  TF(this.t);

  @override
  _TFState createState() => _TFState(t);
}

class _TFState extends State<TF> {
  final String t;

  _TFState(this.t);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 12, 15, 12),
      child: TextField(
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            hintText: t,
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            filled: true,
            fillColor: Color.fromRGBO(244, 240, 239, 1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            )),
      ),
    );
  }
}

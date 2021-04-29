import 'package:flutter/material.dart';

class TF extends StatefulWidget {
  final Color c;
  final String title;
  final TextInputType TIT;

  const TF(this.c, this.title, this.TIT);

  @override
  _TFState createState() => _TFState(c, title, TIT);
}

class _TFState extends State<TF> {
  final TextInputType TIT;
  final String title;
  final Color c;

  _TFState(this.c, this.title, this.TIT);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: c,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        TextField(
          keyboardType: TIT,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.edit),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
      ],
    );
  }
}

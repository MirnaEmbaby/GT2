import 'package:flutter/material.dart';
import 'package:task2/Avatar.dart';
import 'package:task2/Screen2.dart';
import 'package:task2/UserData.dart';
import 'Screen.dart';

class Screen1 extends StatelessWidget {
  final Color c;
  final String avatar;
  String header1 = "بيانات حسابي";

  Screen1(this.c, this.avatar);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Screen2(c);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(247, 247, 247, 1),
          width: double.infinity,
          child: Column(
            children: [
              Screen(header1),
              SizedBox(
                height: 20,
              ),
              Avatar(c, avatar),
              Data(c),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "تغيير كلمة المرور",
                  style: TextStyle(
                      color: c, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () => selectScreen(context),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: 330,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  color: c,
                  child: Text(
                    "تأكيد",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

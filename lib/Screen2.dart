import 'package:flutter/material.dart';
import 'package:task2/Screen.dart';
import 'package:task2/Screen2TF.dart';

class Screen2 extends StatelessWidget {
  String header2 = "تغيير كلمة المرور";
  final Color c;
  String avatar = "assets/images/circleAvatar.png";

  Screen2(this.c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(247, 247, 247, 1),
        child: Column(
          children: [
            Screen(header2),
            TF("كلمة المرور القديمة"),
            TF("كلمة المرور الجديدة"),
            TF("تأكيد كلمة المرور الجديدة"),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(177, 156, 155, 1), c],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.8]),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          height: 70,
          alignment: Alignment.center,
          child: Text(
            "تأكيد",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

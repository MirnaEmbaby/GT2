import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  final Color c;
  final String avatar;

  const Avatar(this.c, this.avatar);

  @override
  _AvatarState createState() => _AvatarState(c, avatar);
}

class _AvatarState extends State<Avatar> {
  final Color c;
  final String avatar;

  _AvatarState(this.c, this.avatar);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              avatar,
              height: 150,
              width: 150,
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: c,
                ),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Text(
          "aaaa",
          style: TextStyle(
            color: c,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

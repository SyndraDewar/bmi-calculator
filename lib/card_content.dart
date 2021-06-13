import 'package:flutter/material.dart';

const titleTextStyle = TextStyle(
  color: Color(0xFF8C8D97),
  fontSize: 18.0,
);

class CardContent extends StatelessWidget {
  CardContent({@required this.icon, @required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: titleTextStyle,
        ),
      ],
    );
  }
}

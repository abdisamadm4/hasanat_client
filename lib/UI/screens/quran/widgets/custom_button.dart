import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.size,
    @required this.bgColor,
    @required this.color,
    @required this.text,
    @required this.press,
    this.icon,
  }) : super(key: key);

  final double size;
  final Color bgColor, color;
  final String text;
  final Function press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 50,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: bgColor,
      ),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.3,
          ),
        ),
        onPressed: press,
      ),
    );
  }
}

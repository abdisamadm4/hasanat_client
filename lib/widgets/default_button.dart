import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant_styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: GoogleFonts.muli(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 1.3,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

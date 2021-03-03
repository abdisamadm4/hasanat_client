import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasanat/config/pallete/constants.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({
    Key key,
    @required this.text,
    @required this.press,
    @required this.fSize,
  }) : super(key: key);

  final String text;
  final Function press;
  final double fSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      padding: EdgeInsets.all(10),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: kPrimaryColor,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: fSize,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: press,
      ),
    );
  }
}

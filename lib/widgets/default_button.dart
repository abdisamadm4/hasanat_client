import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

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
      margin: EdgeInsets.all(20),
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: kPrimaryColor,
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.lato(
                  fontSize: 22,
                  color: Colors.white,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              "assets/icons/next.svg",
              width: 16,
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

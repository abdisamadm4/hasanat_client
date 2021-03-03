import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasanat/config/pallete/constants.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "الرجاء اختيار اللغة",
            style: GoogleFonts.changa(
              fontSize: 30.0,
              color: kPrimaryColor,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Please select your language",
            style: GoogleFonts.montserrat(fontSize: 26.0, color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}

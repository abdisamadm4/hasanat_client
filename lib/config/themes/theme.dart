import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasanat/config/pallete/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBgColor,
    fontFamily: GoogleFonts.muli().toString(),
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1:
        GoogleFonts.greatVibes(color: kTextColor, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: kPrimaryColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.grey),
    textTheme: TextTheme(
      headline6: GoogleFonts.oswald(
        color: Color(0XFF8B8B8B),
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

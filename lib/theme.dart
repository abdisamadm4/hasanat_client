import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant_styles.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFF5F6F9),
    fontFamily: GoogleFonts.muli().toString(),
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
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
    centerTitle: true,
    color: Color(0xFFF5F6F9),
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

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF184A45);
const kBgColor = Color(0xFFB0B8B4);
const kTextColor = Color(0xFF757575);
const kSecondaryColor = Color(0xFFFC766A);

final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kNamelNullError = "Please Enter your name";
const String kGenderNullError = "Please select your gender";

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF4CAF50);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kNamelNullError = "Please Enter your name";
const String kGenderNullError = "Please select your gender";

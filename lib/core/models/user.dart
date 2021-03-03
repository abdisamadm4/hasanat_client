import 'package:flutter/material.dart';

class Users {
  int id;
  String name;
  String email;
  String language;
  String gender;
  Users({
    @required this.id,
    @required this.language,
    @required this.name,
    @required this.email,
    @required this.gender,
  });
}

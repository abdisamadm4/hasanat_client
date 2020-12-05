import 'package:flutter/material.dart';

class MainCard {
  final int id;
  final String name;
  final String image;
  final Function press;
  MainCard({
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.press,
  });
}

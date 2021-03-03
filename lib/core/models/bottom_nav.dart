import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav {
  int id;
  String label;
  IconData icon;

  BottomNav({this.label, this.icon});
  List<BottomNav> items = [
    BottomNav(icon: Icons.book, label: 'Today'),
    BottomNav(icon: Icons.radio, label: 'Athkar'),
    BottomNav(icon: Icons.list, label: 'Index'),
    BottomNav(icon: Icons.person, label: 'More'),
  ];
}

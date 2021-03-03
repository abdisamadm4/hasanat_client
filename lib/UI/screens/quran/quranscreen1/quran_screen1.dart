import 'package:flutter/material.dart';
import 'package:hasanat/UI/screens/quran/quranscreen1/widgets/body.dart';

class QuranScreen1 extends StatefulWidget {
  static String routeName = '/quran1';

  @override
  _QuranScreen1State createState() => _QuranScreen1State();
}

class _QuranScreen1State extends State<QuranScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "New Khatma",
            style: TextStyle(
              color: Color(0xFFB0B8B4),
            ),
          ),
          // leading: Icon(Icons.book),
        ),
        body: Body());
  }
}

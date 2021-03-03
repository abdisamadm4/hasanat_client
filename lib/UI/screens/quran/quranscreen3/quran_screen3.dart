import 'package:flutter/material.dart';
import 'package:hasanat/UI/screens/quran/quranscreen3/widgets/body.dart';
import 'package:hasanat/UI/screens/quran/quranscreen3/widgets/bottom_nav.dart';
import 'package:hasanat/config/pallete/constants.dart';

class QuranScreen3 extends StatefulWidget {
  static String routeName = '/quran3';

  @override
  _QuranScreen3State createState() => _QuranScreen3State();
}

class _QuranScreen3State extends State<QuranScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Current Session",
          style: TextStyle(
            color: kBgColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: kBgColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: kBgColor,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hasanat/UI/screens/quran/quranscreen2/widgets/body.dart';

class QuranScreen2 extends StatefulWidget {
  static String routeName = '/quran2';

  @override
  _QuranScreen2State createState() => _QuranScreen2State();
}

class _QuranScreen2State extends State<QuranScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Khatmah",
          style: TextStyle(color: Color(0xFFB0B8B4)),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
          color: Color(0xFFB0B8B4),
        ),
      ),
      body: Body(),
    );
  }
}

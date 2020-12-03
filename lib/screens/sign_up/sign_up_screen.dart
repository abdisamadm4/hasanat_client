import 'package:flutter/material.dart';
import 'package:hasanat/screens/home/home_screen.dart';
import 'package:hasanat/screens/sign_up/widgets/gender_builder.dart';
import 'package:hasanat/widgets/logo_builder.dart';
import 'package:hasanat/widgets/quran_builder.dart';
import 'widgets/emai_builder.dart';
import 'widgets/language_builder.dart';
import 'widgets/name_builder.dart';

Widget currentView;

class SignUpScreen extends StatefulWidget {
  static String routeName = '/';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    getBoolLanguage().then((bool) => {
          print(bool),
          setState(() {
            if (bool) {
              return currentView = LanguageBuilder();
            }
          })
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            LogoBuilder(),
            SizedBox(
              height: 5,
            ),
            // StepsBuilder(),
            SizedBox(
              height: 20,
            ),
            QuranBuilder(),
            Container(
              height: 150,
              child: currentView,
            ),
          ],
        ),
      ),
    );
  }
}

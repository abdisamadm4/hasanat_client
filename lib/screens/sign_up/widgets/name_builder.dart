import 'package:flutter/material.dart';
import 'package:hasanat/widgets/default_button.dart';
import 'package:hasanat/widgets/logo_builder.dart';
import 'package:hasanat/widgets/quran_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../sign_up_screen.dart';

import 'emai_builder.dart';

//Save value to shared preferences
Future<bool> saveNamePerfs(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  return bool.fromEnvironment(name);
}

//Get language from shared preference
Future<String> getNamePrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String language = prefs.getString('name');
  return language;
}

Future<bool> getBoolName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('name');
  return val;
}

class NameBuilder extends StatefulWidget {
  static String routeName = '/name';

  @override
  _NameBuilderState createState() => _NameBuilderState();
}

class _NameBuilderState extends State<NameBuilder> {
  final _nameController = TextEditingController();

  @override
  void initState() {
    getBoolName().then((bool) => {
          if (!bool) {currentView = NameBuilder()}
        });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            LogoBuilder(),
            // StepsBuilder(),
            QuranBuilder(),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Enter your Name'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultButton(
              press: () {
                saveNamePerfs(_nameController.text).then((_) => {
                      Navigator.pushNamed(context, EmailBuilder.routeName),
                    });
              },
              text: 'NEXT',
            ),
          ],
        ),
      ),
    );
  }
}

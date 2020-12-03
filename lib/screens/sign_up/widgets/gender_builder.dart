import 'package:flutter/material.dart';
import 'package:hasanat/screens/home/home_screen.dart';
import 'package:hasanat/screens/sign_up/widgets/sign_up.dart';
import 'package:hasanat/widgets/default_button.dart';
import 'package:hasanat/widgets/logo_builder.dart';
import 'package:hasanat/widgets/quran_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sign_up_screen.dart';
import 'emai_builder.dart';
import 'language_builder.dart';
import 'name_builder.dart';

Future<bool> saveGenderPrefs(String gender) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('gender', gender);
  return bool.fromEnvironment(gender);
}

//Get language from shared preference
Future<String> getGenderPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String gender = prefs.getString('gender');
  return gender;
}

Future<bool> getBoolGender() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('gender');
  return val;
}

class GenderBuilder extends StatefulWidget {
  static String routeName = '/gender';
  @override
  _GenderBuilderState createState() => _GenderBuilderState();
}

class _GenderBuilderState extends State<GenderBuilder> {
  String _langauge = '';
  String _name = '';
  String _email = '';
  String _gender = '';
  String genderGroupVal = '';

  @override
  void initState() {
    getBoolGender().then((bool) => {
          if (!bool)
            {
              currentView = EmailBuilder(),
            }
        });
    getLangPrefs().then((String language) => {
          setState(() {
            this._langauge = language;
          })
        });
    getNamePrefs().then((String name) => {
          setState(() {
            this._name = name;
          })
        });
    getEmailPrefs().then((String email) => {
          setState(() {
            this._email = email;
          })
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
            Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 'Male',
                          groupValue: genderGroupVal,
                          onChanged: (val) {
                            genderGroupVal = val;
                            setState(() {
                              _gender = val;
                            });
                          },
                        ),
                        Text("Male"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Female',
                          groupValue: genderGroupVal,
                          onChanged: (val) {
                            genderGroupVal = val;
                            setState(() {
                              _gender = val;
                            });
                          },
                        ),
                        Text("Female"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            DefaultButton(
              press: () {
                saveGenderPrefs(_gender).then(
                  (_) => {
                    Navigator.pushNamed(context, HomeScreen.routeName),
                  },
                );
                signup(_langauge, _name, _email, _gender);
              },
              text: 'DONE',
            )
          ],
        ),
      ),
    );
  }
}

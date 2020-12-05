import 'package:flutter/material.dart';
import 'package:hasanat/screens/sign_up/widgets/sign_up.dart';
import 'package:hasanat/widgets/widgets.dart';
import '../sign_up_screen.dart';
import 'get/get_email.dart';
import 'get/get_gender.dart';
import 'get/get_name.dart';
import 'language_builder.dart';

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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              height: 30,
            ),
            DefaultButton(
              press: () {
                if (_gender != '') {
                  saveGenderPrefs(_gender).then(
                    (_) => {
                      Navigator.pushNamed(context, SignUpScreen.routeName),
                    },
                  );
                  signup(_langauge, _name, _email, _gender);
                }
              },
              text: 'Done',
            )
          ],
        ),
      ),
    );
  }
}

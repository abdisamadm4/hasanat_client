import 'package:flutter/material.dart';
import 'package:hasanat/screens/sign_up/widgets/gender_builder.dart';
import 'package:hasanat/widgets/default_button.dart';
import 'package:hasanat/widgets/logo_builder.dart';
import 'package:hasanat/widgets/quran_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sign_up_screen.dart';
import 'name_builder.dart';

Future<bool> saveEmailPerfs(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
  return bool.fromEnvironment(email);
}

//Get language from shared preference
Future<String> getEmailPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String email = prefs.getString('email');
  return email;
}

Future<bool> getBoolEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('email');
  return val;
}

class EmailBuilder extends StatefulWidget {
  static String routeName = '/email';

  @override
  _EmailBuilderState createState() => _EmailBuilderState();
}

class _EmailBuilderState extends State<EmailBuilder> {
  final _emailController = TextEditingController();

  @override
  void initState() {
    getBoolEmail().then((bool) => {
          if (!bool)
            {
              currentView = EmailBuilder(),
            }
        });
    super.initState();
  }

  @override
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
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Enter your Email'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultButton(
              press: () {
                saveEmailPerfs(_emailController.text).then((_) => {
                      Navigator.pushNamed(context, GenderBuilder.routeName),
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

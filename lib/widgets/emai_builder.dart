import 'package:flutter/material.dart';
import 'package:hasanat/screens/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Enter your Email'),
              ),
            ),
            FlatButton(
              onPressed: () {
                saveEmailPerfs(_emailController.text).then((_) => {
                      Navigator.pushNamed(context, HomeScreen.routeName),
                    });
              },
              child: Text('NEXT'),
            )
          ],
        ),
      ),
    );
  }
}

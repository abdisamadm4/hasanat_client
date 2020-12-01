import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'emai_builder.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Enter your Name'),
              ),
            ),
            FlatButton(
              onPressed: () {
                saveNamePerfs(_nameController.text).then((_) => {
                      Navigator.pushNamed(context, EmailBuilder.routeName),
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

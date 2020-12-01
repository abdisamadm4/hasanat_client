import 'package:flutter/material.dart';
import 'package:hasanat/widgets/emai_builder.dart';
import 'package:hasanat/widgets/language_builder.dart';
import 'package:hasanat/widgets/name_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _name = '';
  String _email = '';
  String _langauge = '';

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
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Home'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(_langauge),
            Text(_name),
            Text(_email),
            FlatButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('language');
                prefs.remove('name');
                prefs.remove('email');
              },
              child: Text('Log out'),
            )
          ],
        ),
      ),
    );
  }
}

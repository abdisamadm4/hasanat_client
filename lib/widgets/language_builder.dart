//Language builder widget
import 'package:flutter/material.dart';
import 'package:language_pickers/language_pickers.dart';
import 'package:language_pickers/languages.dart';
import 'package:language_pickers/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'name_builder.dart';

//Save language to shared preference
Future<bool> saveLangPerfs(String language) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('language', language);
  return bool.fromEnvironment(language);
}

//Get language from shared preference
Future<String> getLangPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String language = prefs.getString('language');
  return language;
}

Future<bool> getBoolLanguage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('language');
  return val;
}

class LanguageBuilder extends StatefulWidget {
  static String routeName = '/language';

  @override
  _LanguageBuilderState createState() => _LanguageBuilderState();
}

class _LanguageBuilderState extends State<LanguageBuilder> {
  Language _selectedLanguage = LanguagePickerUtils.getLanguageByIsoCode('en');

  Widget _buildDropdownItem(Language language) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 8.0,
        ),
        Text("${language.name}    (${language.isoCode})"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: LanguagePickerDropdown(
            initialValue: 'en',
            itemBuilder: _buildDropdownItem,
            onValuePicked: (Language language) {
              _selectedLanguage = language;
              print(_selectedLanguage.name);
              print(_selectedLanguage.isoCode);
            },
          ),
        ),
        FlatButton(
          onPressed: () {
            saveLangPerfs(_selectedLanguage.name).then(
              (_) => Navigator.pushNamed(context, NameBuilder.routeName),
            );
          },
          child: Text('NEXT'),
        )
      ],
    );
  }
}

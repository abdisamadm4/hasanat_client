//Language builder widget
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasanat/widgets/default_button.dart';
import 'package:language_pickers/language_pickers.dart';
import 'package:language_pickers/languages.dart';
import 'package:language_pickers/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sign_up_screen.dart';

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
      children: [
        SizedBox(
          width: 8.0,
        ),
        Text(
          "${language.name}    ( ${language.isoCode} )       ",
          style: GoogleFonts.lato(
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'What language do you understand?',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF484747),
                ),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFD5D5D5),
                ),
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFf6f6f6),
              ),
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
          ],
        ),
        DefaultButton(
          press: () {
            saveLangPerfs(_selectedLanguage.name).then(
              (_) => Navigator.pushNamed(context, SignUpScreen.routeName),
            );
          },
          text: 'Next',
        )
      ],
    );
  }
}

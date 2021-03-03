//Language builder widget
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasanat/UI/utils/default_button.dart';
import 'package:hasanat/core/services/services.dart';
import 'package:language_pickers/language_pickers.dart';
import 'package:language_pickers/languages.dart';
import 'package:language_pickers/utils/utils.dart';

import '../sign_up_screen.dart';

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
              height: 60,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFD5D5D5),
                ),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFf6f6f6),
              ),
              child: LanguagePickerDropdown(
                initialValue: 'en',
                itemBuilder: _buildDropdownItem,
                onValuePicked: (Language language) {
                  _selectedLanguage = language;
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

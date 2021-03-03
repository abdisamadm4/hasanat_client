import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../screens.dart';
import 'language_card.dart';
import 'select_language.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: logCard(),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 1,
          child: SelectLanguage(),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LanguageCard(
                  text: "English",
                  fSize: 20,
                  press: () {
                    Navigator.pushNamed(context, QuranScreen1.routeName);
                  },
                ),
                LanguageCard(
                  text: "عربي",
                  fSize: 28,
                  press: () async {
                    SharedPreferences _prefs =
                        await SharedPreferences.getInstance();
                    _prefs.remove('language');
                    _prefs.remove('name');
                    _prefs.remove('email');
                    _prefs.remove('gender');
                    // Navigator.pushNamed(context, QuranScreen1.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container logCard() {
    return Container(
      padding: EdgeInsets.all(50),
      width: double.infinity,
      child: SvgPicture.asset(
        "assets/icons/logo.svg",
        fit: BoxFit.contain,
      ),
    );
  }
}

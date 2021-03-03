import 'package:flutter/material.dart';
import 'package:hasanat/UI/utils/default_button.dart';
import 'package:hasanat/config/pallete/constants.dart';
import 'package:hasanat/core/services/services.dart';
import '../sign_up_screen.dart';

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
  int selectedIndex;
  List<String> lst = ['Male', 'Female'];

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
    return ListView(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(lst[0], 0),
                customButton(lst[1], 1),
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
    );
  }

  void changeIndex(int index, String text) {
    setState(() {
      selectedIndex = index;
      _gender = text;
    });
  }

  Widget customButton(String txt, int index) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selectedIndex == index ? kPrimaryColor : Colors.grey[300],
      ),
      child: FlatButton(
        onPressed: () => {
          changeIndex(index, txt),
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          txt,
          style: TextStyle(
            color: selectedIndex == index ? Colors.white : kPrimaryColor,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hasanat/UI/screens/quran/widgets/custom_button.dart';
import 'package:hasanat/UI/screens/quran/widgets/custom_dropdown.dart';
import '../../../screens.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "From where you wish to start your khatmah",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF184A45)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Start from:",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.3,
                    color: Color(0xFF184A45)),
              ),
              SizedBox(
                width: 5,
              ),
              CustomDropDown(),
            ],
          ),
        ),
        CustomButton(
          bgColor: Color(0xFF184A45),
          color: Color(0xFFB0B8B4),
          size: double.infinity,
          text: "Continue",
          press: () async {
            // SharedPreferences prefs = await SharedPreferences.getInstance();
            // prefs.remove('language');
            // prefs.remove('name');
            // prefs.remove('email');
            // prefs.remove('gender');
            Navigator.pushNamed(context, QuranScreen2.routeName);
          },
        ),
      ],
    );
  }
}

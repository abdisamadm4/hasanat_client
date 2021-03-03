import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Text(
            "In how many days do you wish to finish reading Qur'an? ",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              wordSpacing: 1.4,
              letterSpacing: 1.5,
              color: Color(0xFF184A45),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Duration:",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.3,
                color: Color(0xFF184A45),
              ),
            ),
            Text(
              "30 days",
              style: TextStyle(
                color: Color(0xFF184A45),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF184A45),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.plusCircle,
                      color: Color(0xFFB0B8B4),
                    ),
                    color: Colors.black38,
                    onPressed: () {},
                  ),
                  VerticalDivider(
                    color: Colors.white,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.minusCircle),
                    color: Color(0xFFB0B8B4),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Daily amount:",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.3,
                color: Color(0xFF184A45),
              ),
            ),
            CustomDropDown(),
            CustomDropDown(),
          ],
        ),
        CustomButton(
          bgColor: Color(0xFF184A45),
          color: Color(0xFFB0B8B4),
          size: double.infinity,
          text: "Continue",
          press: () => Navigator.pushNamed(context, QuranScreen3.routeName),
        ),
      ],
    );
  }
}

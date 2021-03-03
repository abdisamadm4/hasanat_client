import 'package:flutter/material.dart';
import 'package:hasanat/UI/screens/quran/widgets/custom_button.dart';
import 'package:hasanat/UI/screens/quran/widgets/text.dart';
import 'package:hasanat/config/pallete/constants.dart';

import 'khatma_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KhatmaCard(),
        Row(
          children: [
            CustomButton(
              bgColor: kPrimaryColor,
              size: 170,
              press: () {},
              color: kBgColor,
              text: "Start Reading",
            ),
            CustomButton(
              bgColor: kSecondaryColor,
              size: 170,
              press: () {},
              color: kPrimaryColor,
              text: "Done Reading",
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 80,
              child: Divider(
                height: 5,
                color: Color(0xFF717E91),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: TextWidget(
                color: Color(0xFF333333),
                size: 20,
                text: "Khatma Sessions",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 8,
              width: 380,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                value: 0,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    color: Color(0xFF333333),
                    text: "Previous: 0",
                    size: 17,
                  ),
                  TextWidget(
                    color: Color(0xFF333333),
                    text: "Upcoming: 29",
                    size: 17,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

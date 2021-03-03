import 'package:flutter/material.dart';
import 'package:hasanat/UI/screens/quran/widgets/text.dart';
import 'package:hasanat/config/pallete/constants.dart';

class KhatmaCard extends StatelessWidget {
  const KhatmaCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 330,
      color: Color(0xFFDFDCE5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "Starts From",
                color: kPrimaryColor,
                size: 17,
              ),
              TextWidget(
                text: "Juz'1",
                color: kPrimaryColor,
                size: 17,
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          TextWidget(
            text: "بِسْمِ اللَّهِ الرَّحْمَـٰنِ الرَّحِيمِ",
            color: kPrimaryColor,
            size: 21,
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "Surat Al-fatiha -Aya 1",
                color: kPrimaryColor,
                size: 17,
              ),
              TextWidget(
                text: "Page 1",
                color: kPrimaryColor,
                size: 17,
              ),
            ],
          ),
          SizedBox(
            height: 20,
            child: Divider(
              height: 2,
              color: kBgColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "To Surat Al-Baqarah -Aya 141",
                color: kPrimaryColor,
                size: 17,
              ),
              TextWidget(
                text: "Page 21",
                color: kPrimaryColor,
                size: 17,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

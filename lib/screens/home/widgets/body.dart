import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasanat/models/main_card.dart';

class Body extends StatelessWidget {
  final List<MainCard> items = [
    MainCard(
      id: 1,
      name: 'My Prayer',
      image: 'assets/images/prayer.svg',
      press: () {},
    ),
    MainCard(
        id: 1, name: 'My Zikr', image: 'assets/images/zikr.svg', press: () {}),
    MainCard(
        id: 1,
        name: 'My Quran',
        image: 'assets/images/quran.svg',
        press: () {}),
    MainCard(
        id: 1,
        name: 'Targets',
        image: 'assets/images/targets.svg',
        press: () {}),
    MainCard(
        id: 1,
        name: 'Channels',
        image: 'assets/images/channels.svg',
        press: () {}),
    MainCard(
        id: 1,
        name: 'Checklist',
        image: 'assets/images/checklist.svg',
        press: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 2.5,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => GridTile(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5FBFF),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              //background color of box
              BoxShadow(
                color: Colors.black.withAlpha(15),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 5.0, //extend the shadow
                offset: Offset(
                  15.0, // Move to right 10  horizontally
                  15.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: InkWell(
            onTap: items[index].press,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  items[index].image,
                  fit: BoxFit.cover,
                ),
                Text(
                  items[index].name,
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
      itemCount: items.length,
    );
  }
}

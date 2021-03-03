import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        'وَأَقِمِ الصَّلَاةَ طَرَفَيِ النَّهَارِ وَزُلَفًا مِّنَ اللَّيْلِ ۚ إِنَّ الْحَسَنَاتِ يُذْهِبْنَ السَّيِّئَاتِ ۚ ذَٰلِكَ ذِكْرَىٰ لِلذَّاكِرِينَ',
        style: GoogleFonts.mada(
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -1.8,
          color: Color(0xFF184A45),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 200,
      child: SvgPicture.asset(
        "assets/icons/logo.svg",
        fit: BoxFit.contain,
      ),
    );
  }
}

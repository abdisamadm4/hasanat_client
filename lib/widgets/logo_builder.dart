import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: SvgPicture.asset(
        "assets/icons/logo.svg",
        fit: BoxFit.contain,
      ),
    );
  }
}

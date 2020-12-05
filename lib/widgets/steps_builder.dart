import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StepsBuilder extends StatefulWidget {
  @override
  _StepsBuilderState createState() => _StepsBuilderState();
}

class _StepsBuilderState extends State<StepsBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StepBuilder(image: "assets/icons/tick.svg", text: "Step 1"),
          Container(
            width: 30,
            height: 1,
            color: Colors.grey,
          ),
          StepBuilder(image: "assets/icons/tick2.svg", text: "Step 2"),
          Container(
            width: 30,
            height: 1,
            color: Colors.grey,
          ),
          StepBuilder(image: "assets/icons/tick2.svg", text: "Step 3"),
          Container(
            width: 30,
            height: 1,
            color: Colors.grey,
          ),
          StepBuilder(image: "assets/icons/tick2.svg", text: "Step 4"),
        ],
      ),
    );
  }
}

class StepBuilder extends StatelessWidget {
  const StepBuilder({
    Key key,
    @required this.text,
    @required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          child: SvgPicture.asset(image),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: GoogleFonts.openSans(fontSize: 12),
        )
      ],
    );
  }
}

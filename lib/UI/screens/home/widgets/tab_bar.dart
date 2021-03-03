import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarBuilder extends StatelessWidget {
  const TabBarBuilder({
    Key key,
    @required this.count,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final String count;
  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Tab(
              icon: SvgPicture.asset(
                icon,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            count,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

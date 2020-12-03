import 'package:flutter/material.dart';

class TabBarBuilder extends StatelessWidget {
  const TabBarBuilder({
    Key key,
    @required this.bgColor,
    @required this.count,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final Color bgColor;
  final String count;
  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: bgColor),
            child: Tab(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 10,
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

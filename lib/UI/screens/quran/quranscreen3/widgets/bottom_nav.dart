import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color(0xFFB0B8B4),
      selectedItemColor: Colors.white,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF184A45),
      iconSize: 25.0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Today',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.radio),
          label: 'Athkar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Index',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'More',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}

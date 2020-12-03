import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant_styles.dart';
import 'widgets/tab_bar.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            actions: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.notifications_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.settings)
                  ],
                ),
              )
            ],
            bottom: TabBar(
              tabs: [
                TabBarBuilder(
                  icon: Icons.search,
                  count: '23k',
                  bgColor: kPrimaryColor,
                  press: () {},
                ),
                TabBarBuilder(
                  icon: Icons.home,
                  count: '12k',
                  bgColor: Colors.blue,
                  press: () {},
                ),
                TabBarBuilder(
                  icon: Icons.notifications_none,
                  count: '32k',
                  bgColor: Colors.orange,
                  press: () {},
                ),
              ],
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: Text(
                  "Home screen",
                )),
                FlatButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove('language');
                    prefs.remove('name');
                    prefs.remove('email');
                    prefs.remove('gender');
                  },
                  child: Text('log out'),
                )
              ],
            ),
          ),
        ));
  }
}

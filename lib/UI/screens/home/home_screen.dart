// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:hasanat/UI/screens/home/widgets/body.dart';
// import 'package:hasanat/config/themes/theme.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'widgets/tab_bar.dart';

// class HomeScreen extends StatefulWidget {
//   static String routeName = '/home';

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: theme(),
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//             appBar: AppBar(
//               leading: Icon(Icons.menu),
//               actions: [
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 15),
//                   child: Row(
//                     children: [
//                       Icon(Icons.notifications_rounded),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Icon(Icons.settings)
//                     ],
//                   ),
//                 )
//               ],
//               bottom: TabBar(
//                 tabs: [
//                   TabBarBuilder(
//                     icon: 'assets/icons/top1.svg',
//                     count: '12k',
//                     press: () {},
//                   ),
//                   TabBarBuilder(
//                     icon: 'assets/icons/top2.svg',
//                     count: '32k',
//                     press: () {},
//                   ),
//                   TabBarBuilder(
//                     icon: 'assets/icons/top3.svg',
//                     count: '23k',
//                     press: () {},
//                   ),
//                 ],
//               ),
//             ),
//             body: Body(),
//             floatingActionButton: FloatingActionButton(
//               backgroundColor: Colors.white,
//               elevation: 0,
//               onPressed: () async {
//                 SharedPreferences prefs = await SharedPreferences.getInstance();
//                 prefs.remove('language');
//                 prefs.remove('name');
//                 prefs.remove('email');
//                 prefs.remove('gender');
//                 Navigator.pushNamed(context, HomeScreen.routeName);
//               },
//               child: Container(
//                 width: 30,
//                 height: 30,
//                 child: SvgPicture.asset(
//                   "assets/icons/float.svg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             bottomNavigationBar: BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: Color(0xFFF3F3F3),
//               selectedItemColor: Colors.grey,
//               unselectedItemColor: Colors.grey.withOpacity(.60),
//               selectedFontSize: 14,
//               unselectedFontSize: 14,
//               onTap: (value) {
//                 // Respond to item press.
//               },
//               items: [
//                 BottomNavigationBarItem(
//                   label: 'Favourites',
//                   icon: IconButton(
//                     icon: SvgPicture.asset('assets/icons/btm1.svg'),
//                     onPressed: () {},
//                   ),
//                 ),
//                 BottomNavigationBarItem(
//                   label: 'Search',
//                   icon: IconButton(
//                     icon: SvgPicture.asset('assets/icons/btm2.svg'),
//                     onPressed: () {},
//                   ),
//                 ),
//                 BottomNavigationBarItem(
//                   label: 'Chat',
//                   icon: IconButton(
//                     icon: SvgPicture.asset('assets/icons/btm4.svg'),
//                     onPressed: () {},
//                   ),
//                 ),
//                 BottomNavigationBarItem(
//                   label: 'Book',
//                   icon: IconButton(
//                     icon: SvgPicture.asset('assets/icons/btm3.svg'),
//                     onPressed: () {},
//                   ),
//                 ),
//                 BottomNavigationBarItem(
//                   label: 'Checklist',
//                   icon: IconButton(
//                     icon: SvgPicture.asset('assets/icons/btm5.svg'),
//                     onPressed: () {},
//                   ),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }

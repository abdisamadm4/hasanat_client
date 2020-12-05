import 'package:flutter/material.dart';
import 'package:hasanat/routes.dart';
import 'package:hasanat/screens/sign_up/sign_up_screen.dart';
import 'package:hasanat/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hasanat App',
      theme: theme(),
      initialRoute: SignUpScreen.routeName,
      routes: routes,
    );
  }
}

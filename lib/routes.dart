import 'package:flutter/widgets.dart';
import 'package:hasanat/screens/home/home_screen.dart';
import 'package:hasanat/screens/sign_up/sign_up_screen.dart';
import 'package:hasanat/widgets/emai_builder.dart';
import 'package:hasanat/widgets/language_builder.dart';
import 'package:hasanat/widgets/name_builder.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LanguageBuilder.routeName: (context) => LanguageBuilder(),
  NameBuilder.routeName: (context) => NameBuilder(),
  EmailBuilder.routeName: (context) => EmailBuilder()
};

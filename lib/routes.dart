import 'package:flutter/widgets.dart';
import 'screens/screens.dart';
import 'screens/sign_up/widgets/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LanguageBuilder.routeName: (context) => LanguageBuilder(),
  NameBuilder.routeName: (context) => NameBuilder(),
  EmailBuilder.routeName: (context) => EmailBuilder(),
  GenderBuilder.routeName: (context) => GenderBuilder(),
  PrayerScreen.routeName: (context) => PrayerScreen(),
  ZikrScreen.routeName: (context) => ZikrScreen(),
  QuranScreen.routeName: (context) => QuranScreen(),
  TargetsScreen.routeName: (context) => TargetsScreen(),
  ChannelsScreen.routeName: (context) => ChannelsScreen(),
  CheckListScreen.routeName: (context) => CheckListScreen()
};

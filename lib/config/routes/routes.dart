import 'package:flutter/widgets.dart';
import 'package:hasanat/UI/screens/screens.dart';

final Map<String, WidgetBuilder> routes = {
  LanguageScreen.routeName: (context) => LanguageScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  // LanguageBuilder.routeName: (context) => LanguageBuilder(),
  // NameBuilder.routeName: (context) => NameBuilder(),
  // EmailBuilder.routeName: (context) => EmailBuilder(),
  // GenderBuilder.routeName: (context) => GenderBuilder(),
  PrayerScreen.routeName: (context) => PrayerScreen(),
  ZikrScreen.routeName: (context) => ZikrScreen(),
  QuranScreen1.routeName: (context) => QuranScreen1(),
  QuranScreen2.routeName: (context) => QuranScreen2(),
  QuranScreen3.routeName: (context) => QuranScreen3(),
  TargetsScreen.routeName: (context) => TargetsScreen(),
  ChannelsScreen.routeName: (context) => ChannelsScreen(),
  CheckListScreen.routeName: (context) => CheckListScreen(),
};

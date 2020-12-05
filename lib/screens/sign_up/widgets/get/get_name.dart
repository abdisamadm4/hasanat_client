//Save value to shared preferences
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveNamePerfs(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  return bool.fromEnvironment(name);
}

//Get language from shared preference
Future<String> getNamePrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String language = prefs.getString('name');
  return language;
}

Future<bool> getBoolName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('name');
  return val;
}

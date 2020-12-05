import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveGenderPrefs(String gender) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('gender', gender);
  return bool.fromEnvironment(gender);
}

//Get language from shared preference
Future<String> getGenderPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String gender = prefs.getString('gender');
  return gender;
}

Future<bool> getBoolGender() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('gender');
  return val;
}

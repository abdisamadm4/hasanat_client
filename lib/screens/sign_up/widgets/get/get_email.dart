import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveEmailPerfs(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
  return bool.fromEnvironment(email);
}

//Get language from shared preference
Future<String> getEmailPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String email = prefs.getString('email');
  return email;
}

Future<bool> getBoolEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('email');
  return val;
}

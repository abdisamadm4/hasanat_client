import 'package:shared_preferences/shared_preferences.dart';

//@@LANGUAGE
//Save language to shared preference
Future<bool> saveLangPerfs(String language) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('language', language);
  return bool.fromEnvironment(language);
}

//Get language from shared preference
Future<String> getLangPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String language = prefs.getString('language');
  return language;
}

Future<bool> getBoolLanguage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('language');
  return val;
}

//@@NAME
//Save user name to the shared preference
Future<bool> saveNamePrefs(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  return bool.fromEnvironment(name);
}

//Get use name from shared preference
Future<String> getNamePrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String language = prefs.getString('name');
  return language;
}

//Check if user name is in the shared preference
Future<bool> getBoolName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('name');
  return val;
}

//@@EMAIL
//Save email to shared preference
Future<bool> saveEmailPerfs(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
  return bool.fromEnvironment(email);
}

//Get Email from shared preference
Future<String> getEmailPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String email = prefs.getString('email');
  return email;
}

//Check if email is in the shared preference
Future<bool> getBoolEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('email');
  return val;
}

//@@GENDER
//Save user gender to the shared preference
Future<bool> saveGenderPrefs(String gender) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('gender', gender);
  return bool.fromEnvironment(gender);
}

//Get Gender from shared preference
Future<String> getGenderPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String gender = prefs.getString('gender');
  return gender;
}

//Check if gender value is in the shared preference
Future<bool> getBoolGender() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('gender');
  return val;
}

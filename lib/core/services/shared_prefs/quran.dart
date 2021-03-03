//@@EMAIL
//Save email to shared preference
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveStartFromPrefs(String startFrom) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('startFrom', startFrom);
  return bool.fromEnvironment(startFrom);
}

//Get Email from shared preference
Future<String> getStartFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String startFrom = prefs.getString('startFrom');
  print(startFrom);
  return startFrom;
}

//Check if email is in the shared preference
Future<bool> getBoolStartFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool val = prefs.containsKey('startFrom');
  return val;
}

import 'dart:convert';

import 'package:http/http.dart' as http;

void signup(language, name, email, gender) async {
  String url = 'http://10.0.2.2:3001';
  Map data = {
    'language': language,
    'name': name,
    'email': email,
    'gender': gender
  };
  String body = json.encode(data);

  http.Response response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: body,
  );
  print('Successfully created');
  print(response.body);
}

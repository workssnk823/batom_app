import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;

const apiUrl = 'http://credevelopmentwp3.work/wp-json/wp/v2/';

Future<List<dynamic>> getWpPostsJson() async {
  var url = '${apiUrl}posts';
  var response = await http.read(url);
  return json.decode(response);
}

Future<List<dynamic>> getWpUsers() async {
  var url = '${apiUrl}users';
  var response = await http.read(url);
  return json.decode(response);
}

Future<dynamic> getWpUser(int id) async {
  if(id < 0) {
    throw ArgumentError('引数は0以上を入力してください');
  }
  var url = '${apiUrl}users/$id';
  var response = await http.read(url);
  return json.decode(response);
}

/*
void main(List<String> args) async {
  print(await getWpUser(1));
}
*/
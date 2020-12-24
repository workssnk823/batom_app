import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


Future<List<dynamic>> getWpPostsJson() async {
  var url = 'https://batom-official-blog.jp/wp-json/wp/v2/posts';
  var response = await http.read(url);
  return json.decode(response);
}




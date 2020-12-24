import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/color.dart';
import 'package:flutter_module/core/services/wp_api.dart';

class HomeRouteModel extends ChangeNotifier {

  List<dynamic> postsJson;
  
  //初期化
  HomeRouteModel() {
    buildPostsJson();
  }

  void buildPostsJson() async {
    postsJson = await getWpPostsJson();
    notifyListeners();
  }


  // getterとsetterを指定しています
  // setのときにnotifyListeners()を呼ぶことアイコンタップと同時に画面を更新しています。
  
  void onItemTapped(int index) {
    
    notifyListeners();
  }
}

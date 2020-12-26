import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/color.dart';
import 'package:flutter_module/core/services/wp_api.dart';

  class PostModel {
    String title;
    String userName;
    String userLink;
    String userImgUrl;
  }

class HomeRouteModel extends ChangeNotifier {
  List<PostModel> postModels = new List<PostModel>();

  
  //初期化
  HomeRouteModel() {
    buildPostsJson();
  }

  void buildPostsJson() async {
    var postsJson = await getWpPostsJson();
    for(int i = 0; i < postsJson.length; i++) {
      var postModel = new PostModel();
      postModel.title = postsJson[i]['title']['rendered'];
      var userJson = await getWpUser(postsJson[i]['author']);
      postModel.userName = userJson['name'];
      postModel.userLink = userJson['link'];
      postModel.userImgUrl = userJson['url'];

      postModels.add(postModel);
    }
    

    notifyListeners();
  }


  // getterとsetterを指定しています
  // setのときにnotifyListeners()を呼ぶことアイコンタップと同時に画面を更新しています。
  
  void onItemTapped(int index) {
    
    notifyListeners();
  }
}

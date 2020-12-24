import 'package:flutter/material.dart';
import 'package:flutter_module/color.dart';
import 'package:flutter_module/core/models/home_route_model.dart';
import 'package:flutter_module/header.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ChangeNotifierProvider<HomeRouteModel>(
        create: (_) => HomeRouteModel(),
        child: Consumer<HomeRouteModel>(builder: (context, model, child) {
            return (model.postsJson == null || model.postsJson.length == 0) ? 
            Text('Loading....') :
            ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                        backgroundImage:NetworkImage ('https://batom.jp/wp-content/uploads/user/23/4tdi40tf-300x300.jpg')
                        ), //写真
                title:Text(model.postsJson[0]['id'].toString()),//APIから取ってくる
                subtitle: Text('アカウント名'),//APIから取ってくる
              );
            },
            itemCount: 10,
            );
          }
        ),
      ),
      );
  }
}

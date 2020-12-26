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
            return (model.postModels == null || model.postModels.length == 0) ? 
            Text('') :
            //ListView(children: [Text(model.userJson.toString())]);
            
            ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                        backgroundImage:NetworkImage ('https://batom.jp/wp-content/uploads/user/23/4tdi40tf-300x300.jpg')
                        ), //写真
                title:Text(model.postModels[index].title),//APIから取ってくる
                subtitle: Text(model.postModels[index].userName),//APIから取ってくる
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

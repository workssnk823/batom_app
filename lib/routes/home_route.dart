import 'package:flutter/material.dart';
import 'package:flutter_module/color.dart';
import 'package:flutter_module/header.dart';

class Home extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
                    backgroundImage:NetworkImage ('https://batom.jp/wp-content/uploads/user/23/4tdi40tf-300x300.jpg')
                    ), //写真
            title:Text('タイトル'),//APIから取ってくる
            subtitle: Text('アカウント名'),//APIから取ってくる
          );
        },
        itemCount: 10,
      ),
      );
  }
}

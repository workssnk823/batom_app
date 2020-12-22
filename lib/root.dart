import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// == 作成したWidget をインポート ==================
import 'color.dart';
import 'header.dart';
import 'root_model.dart';
import 'routes/home_route.dart';
import 'routes/notification_route.dart';
import 'routes/post_route.dart';
import 'routes/search_route.dart';
import 'routes/introduction_route.dart';
// =============================================

class RootWidget extends StatelessWidget {
  // === 追加部分 ===
  var _routes = [
    Home(),
    Search(),
    Post(),
    Notificate(),
    Introduction(),
  ];
  // ==============
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RootModel>(
        create: (_) => RootModel(),
        child: Consumer<RootModel>(builder: (context, model, child) {
          return Scaffold(
            appBar: Header(),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    //width:,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: null,
                    ),
                  ),
                  ListTile(
                    title: Text("通知"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Text("投稿"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Text("タイムライン"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Text("プロフィール"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Text("設定"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Text("お問い合わせ"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            body: _routes.elementAt(model.currentIndex),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: generalColor,
              type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
              items: model.bottomNavigationBarItems,
              currentIndex: model.currentIndex,
              onTap: model.onItemTapped,
            ),
          );
        })
    );
  }
}

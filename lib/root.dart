import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// == 作成したWidget をインポート ==================
import 'color.dart';
import 'header.dart';
import 'core/models/root_model.dart';
import 'main.dart';
import 'routes/home_route.dart';
import 'routes/notification_route.dart';
import 'routes/post_route.dart';
import 'routes/search_route.dart';
import 'routes/introduction_route.dart';
import 'timeline.dart';
import 'prpfile.dart';
import 'help.dart';
import 'infomation.dart';
import 'setting.dart';
import 'package:page_transition/page_transition.dart';
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
            drawer: SizedBox(
              width:250, // ドロワーの横幅変更
              child: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(
                      height: 83,
                      //width:,
                      child: DrawerHeader(
                        padding: const EdgeInsets.all(8.0),
                          child:InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding:const EdgeInsets.only(bottom:50.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.dehaze_rounded,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                )
                            ),
                          ),
                          decoration: BoxDecoration(
                          color: Colors.blue,
                          ),
                      ),
                    ),
                    ListTile(
                        title: Text("ホーム"),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return App();
                            },
                          ),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return  Notificate();
                            },
                          ),
                        );
                      },
                      title: Text("通知"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Timeline();
                            },
                          ),
                        );
                      },
                      title: Text("タイムライン"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Profile();
                            },
                          ),
                        );
                      },
                      title: Text("プロフィール"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Setting();
                            },
                          ),
                        );
                      },
                      title: Text("設定"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Help();
                            },
                          ),
                        );
                      },
                      title: Text("ヘルプ"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Info();
                            },
                          ),
                        );
                      },
                      title: Text("お問い合わせ"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// == 作成したWidget をインポート ==================
import 'color.dart';
import 'header.dart';
import 'routes/home_route.dart';
import 'routes/notification_route.dart';
import 'routes/post_route.dart';
import 'routes/setting_route.dart';
import 'routes/introduction_route.dart';
// =============================================

class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    Icons.home,
    Icons.notifications,
    Icons.post_add_outlined,
    Icons.connect_without_contact_rounded,//content_paste,
    Icons.settings,
  ];

  static const _footerItemNames = [
    'ホーム',
    '通知',
    '投稿',
    '紹介',
    '設定',
  ];
  // === 追加部分 ===
  var _routes = [
    Home(),
    Notificate(),
    Post(),
    Introduction(),
    Setting(),
  ];
  // ==============

  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_UpdateActiveState(0));
    for (var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
    }
  }

  /// インデックスのアイテムをアクティベートする
  BottomNavigationBarItem _UpdateActiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black87,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black87,
          ),
        )
    );
  }

  BottomNavigationBarItem _UpdateDeactiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black26,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black26,
          ),
        )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] =
          _UpdateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height:70,
              //width:,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
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
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
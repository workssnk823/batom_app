import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootModel extends ChangeNotifier {
  int _currentIndex = 0;
  final bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    Icons.home,
    Icons.notifications,
    Icons.post_add_outlined,
    Icons.connect_without_contact_rounded, //content_paste,
    Icons.settings,
  ];

  static const _footerItemNames = [
    'ホーム',
    '通知',
    '投稿',
    '紹介',
    '設定',
  ];

  RootModel() {
    bottomNavigationBarItems.add(_updateActiveState(0));
    for (var i = 1; i < _footerItemNames.length; i++) {
      bottomNavigationBarItems.add(_updateDeactiveState(i));
    }
  }

  // getterとsetterを指定しています
  // setのときにnotifyListeners()を呼ぶことアイコンタップと同時に画面を更新しています。
  get currentIndex => _currentIndex;

  /// インデックスのアイテムをアクティベートする
  BottomNavigationBarItem _updateActiveState(int index) {
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
        ));
  }

  BottomNavigationBarItem _updateDeactiveState(int index) {
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
        ));
  }

  void onItemTapped(int index) {
    bottomNavigationBarItems[currentIndex] = _updateDeactiveState(currentIndex);
    bottomNavigationBarItems[index] = _updateActiveState(index);
    _currentIndex = index;
    notifyListeners();
  }
}

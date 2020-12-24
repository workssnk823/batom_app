import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/color.dart';

class RootModel extends ChangeNotifier {
  int _currentIndex = 0;
  final bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    Icons.home,
    Icons.search,
    Icons.post_add_outlined,
    Icons.notifications, //content_paste,
    Icons.connect_without_contact_rounded,
  ];

  static const _footerItemNames = [
    'ホーム',
    'フォロー',
    '投稿',
    '通知',
    '紹介',
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
          color: Colors.white,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.white,
          ),
        ));
  }

  BottomNavigationBarItem _updateDeactiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.white,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.white,
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

import 'package:flutter/material.dart';
import '../header.dart';
import 'tile.dart';// <- インポート
class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ======= 変更 ===================
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
            Tile(),
          ]
      ),
      // ===============================
    );
  }
}
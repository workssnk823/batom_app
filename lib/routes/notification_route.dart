import 'package:flutter/material.dart';
import '../header.dart';
import 'tile.dart'; // <- インポート

class Notificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: <Widget>[
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
        // ===============================
        );
  }
}

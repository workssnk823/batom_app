import 'package:flutter/material.dart';
import '../header.dart';
import 'tile.dart'; // <- インポート

class Notificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("通知") // <- (※3)
      ,
    );
  }
}

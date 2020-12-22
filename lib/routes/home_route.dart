import 'package:flutter/material.dart';
import 'package:flutter_module/color.dart';
import 'package:flutter_module/header.dart';
class Home extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("ホーム") // <- (※3)
      ),
    );
  }
}
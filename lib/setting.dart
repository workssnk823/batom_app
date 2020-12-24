import 'package:flutter/material.dart';
import 'header.dart';

class Setting extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: Header(),
        body: Text(
            "設定") // <- (※3)
    );
  }
}
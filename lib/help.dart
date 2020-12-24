import 'package:flutter/material.dart';
import 'header.dart';

class Help extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: Header(),
        body: Text("ヘルプ") // <- (※3)
    );
  }
}
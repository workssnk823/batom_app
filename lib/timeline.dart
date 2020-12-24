import 'package:flutter/material.dart';
import 'header.dart';

class Timeline extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: Header(),
        body: Text("タイムライン") // <- (※3)
    );
  }
}
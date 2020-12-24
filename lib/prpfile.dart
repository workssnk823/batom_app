import 'package:flutter/material.dart';
import 'header.dart';

class Profile extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: Header(),
        body:Text("プロフィール") // <- (※3)
    );
  }
}
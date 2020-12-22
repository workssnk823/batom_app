import 'package:flutter/material.dart';

import '../header.dart';

class News extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("ニュース") // <- (※3)
      ),
    );
  }
}
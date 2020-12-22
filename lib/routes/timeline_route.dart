import 'package:flutter/material.dart';

import '../header.dart';

class TimeLine extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("タイムライン") // <- (※3)
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../header.dart';

class News extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ニュース") // <- (※3)
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'header.dart';

class Info extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: Header(),
        body: Text(
            "お問い合わせ",
            style: TextStyle(
                color: Colors.black,
            ),
        ) // <- (※3)
      );
  }
}
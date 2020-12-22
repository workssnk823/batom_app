import 'package:flutter/material.dart';

import '../header.dart';

class Wallet extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("ウォレット") // <- (※3)
      ),
    );
  }
}
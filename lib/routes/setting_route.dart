import 'package:flutter/material.dart';

import '../header.dart';

class Setting extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ウォレット") // <- (※3)
    );
  }
}
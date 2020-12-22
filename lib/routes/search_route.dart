import 'package:flutter/material.dart';

import '../header.dart';

class Search extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("フォロー") // <- (※3)
        );
  }
}

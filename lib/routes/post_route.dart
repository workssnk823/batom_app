import 'package:flutter/material.dart';

import '../header.dart';

class Post extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("投稿") // <- (※3)
        );
  }
}

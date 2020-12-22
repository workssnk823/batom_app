import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
        ],
        title: Text('Bat"om~バトン~'),
        backgroundColor: generalColor,
        centerTitle: true,
        elevation: 0.0,
    );
  }
}

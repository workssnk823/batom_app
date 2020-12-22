import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                    child: ClipOval(
                        child: Image.network ('https://batom.jp/wp-content/uploads/user/23/4tdi40tf-300x300.jpg',
                          fit: BoxFit.cover,
                          width: 35.0,),
                      )
                  ),
                Icon(
                  Icons.settings,
                ),
              ],
            ),
          ),
        ],
        title: SizedBox(
          child: Image.asset('images/batom_header_logo.jpg'),
          width: 200,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}

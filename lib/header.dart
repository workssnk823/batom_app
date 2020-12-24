import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/prpfile.dart';
import 'color.dart';
import 'setting.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: AppBar(
        iconTheme: IconThemeData(color: Colors.black,size: 32),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: ClipOval(
                            child: Image.network ('https://batom.jp/wp-content/uploads/user/23/4tdi40tf-300x300.jpg',
                              fit: BoxFit.cover,
                              width: 35.0,),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile(),
                        ),
                        );
                    })
                  ),
                InkWell(
                  child:Container(
                    child: Icon(
                      Icons.settings,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Setting(),
                        ),
                    );
                  })
              ],
            ),
          ),
        ],
        title: SizedBox(
          child: Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Image.asset('images/batom_header_logo.jpg')),
          width: 200,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}

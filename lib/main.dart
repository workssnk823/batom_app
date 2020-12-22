import 'package:flutter/material.dart';
import 'root.dart';
import 'color.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batom~バトン~',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: generalColor,
      ),
      home: RootWidget(),
    );
  }
}

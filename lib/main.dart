import 'package:flutter/material.dart';
import 'package:flutterutils/size_page.dart';
import 'package:flutterutils/zoom_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ZoomPage(),
    );
  }
}

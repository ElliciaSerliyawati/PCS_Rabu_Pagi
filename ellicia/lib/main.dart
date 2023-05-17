import 'package:flutter/material.dart';
import 'package:ellicia/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resep Masakan',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: home(),
    );
  }
}
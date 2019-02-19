import 'package:flutter/material.dart';
import './widgets/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "widgets",
      home: HomePage(),
    );
  }
}


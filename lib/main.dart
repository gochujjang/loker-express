
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'homePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LokerExpress.com",
      home: HomePage(),
    );
  }
}




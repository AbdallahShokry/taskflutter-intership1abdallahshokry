import 'package:flutter/material.dart';
import 'package:task1flutter/SkipScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task1',
      home: SkipScreen(),
    );
  }
}

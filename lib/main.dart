import 'package:flutter/material.dart';
import 'package:flutter_assignment_4/Dashboard.dart';
import 'package:flutter_assignment_4/Success_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

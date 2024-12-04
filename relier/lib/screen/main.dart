import 'package:flutter/material.dart';
import 'package:relier/screen/home_profissional_screen.dart';
import 'navbar.dart';

import 'first_screen.dart';
import 'home_screen.dart';
import 'nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7696FF))
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 41, 41),
        body: NavScreen(),
      ),
    );
  }
}
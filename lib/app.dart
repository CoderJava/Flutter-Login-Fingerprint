import 'package:flutter/material.dart';

import 'home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6C63FF),
        accentColor: Color(0xFF6C63FF),
      ),
      home: HomeScreen(),
    );
  }
}

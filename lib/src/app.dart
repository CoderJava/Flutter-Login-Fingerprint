import 'package:flutter/material.dart';

import 'package:flutter_login_fingerprint/src/ui/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6C63FF),
        accentColor: Color(0xFF6C63FF),
      ),
      home: LoginScreen(),
    );
  }
}

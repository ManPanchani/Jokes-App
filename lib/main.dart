import 'package:flutter/material.dart';
import 'package:jokes_app/screens/home_page.dart';
import 'package:jokes_app/screens/splash_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        'HomePage': (context) => const HomePage(),
      },
    ),
  );
}

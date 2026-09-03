import 'package:flutter/material.dart';
import 'package:flutter_news/views/splash_screen.dart';

void main() async {
  runApp(Flutter_News());
}

class Flutter_News extends StatelessWidget {
  const Flutter_News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

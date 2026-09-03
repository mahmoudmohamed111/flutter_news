import 'package:flutter/material.dart';
import 'package:flutter_news/services/get_breaking_news.dart';
import 'package:flutter_news/views/splash_screen.dart';

void main() async {
  GetBreakingNews().getbreaking_news();
  runApp(Flutter_News());
}

class Flutter_News extends StatelessWidget {
  const Flutter_News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

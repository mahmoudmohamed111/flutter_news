import 'package:flutter/material.dart';
import 'package:flutter_news/views/home_view.dart';

void main() {
  runApp(Flutter_News());
}

class Flutter_News extends StatelessWidget {
  const Flutter_News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}

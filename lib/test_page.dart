import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    String category_name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      body: Center(child: Text(category_name, style: TextStyle(fontSize: 25))),
    );
  }
}

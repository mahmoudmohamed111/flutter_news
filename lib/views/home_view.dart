import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Categories_item()]));
  }
}

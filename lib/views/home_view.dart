import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/categories_listview.dart';
import 'package:flutter_news/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Flutter",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text("News", style: TextStyle(fontSize: 20, color: Colors.blue)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: home_view_body(),
      ),
    );
  }
}

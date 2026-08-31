import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Categories_item(),
          ),
        ],
      ),
    );
  }
}

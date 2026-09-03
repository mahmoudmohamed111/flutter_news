import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/categories_listview.dart';

class home_view_body extends StatelessWidget {
  const home_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
          child: categories_listview(),
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Breaking News!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              child: Text(
                "View All",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

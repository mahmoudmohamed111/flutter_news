import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/BreakingNewsSlider.dart';
import 'package:flutter_news/widgets/categories_listview.dart';
import 'package:flutter_news/widgets/trending_news_item.dart';
import 'package:flutter_news/widgets/trending_news_listview.dart';

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
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              child: Text(
                "View All",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: BreakingNewsSlider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Trending News!",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              child: Text(
                "View All",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Expanded(child: TrendingNewsListview()),
      ],
    );
  }
}

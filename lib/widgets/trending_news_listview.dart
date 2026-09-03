import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/trending_news_item.dart';

class TrendingNewsListview extends StatelessWidget {
  const TrendingNewsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return TrendingNewsItem(
          imageUrl:
              "https://images.unsplash.com/photo-1787672807779-37fe51312683?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0MXx8fGVufDB8fHx8fA%3D%3D",
          title:
              "Empty rattan chairs wait beneath the blue-striped awnings of Ti Marilia cafe bar on a quiet Algarve street.",
          description:
              "35mm blue vintage convertible car side mirror 35mm blue vintage convertible car side mirror 35mm blue vintage convertible car side mirror",
          onTap: () {},
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_news/models/news_model.dart';
import 'package:flutter_news/services/trending_news_services.dart';
import 'package:flutter_news/widgets/trending_news_item.dart';

class TrendingNewsListview extends StatefulWidget {
  const TrendingNewsListview({super.key});

  @override
  State<TrendingNewsListview> createState() => _TrendingNewsListviewState();
}

class _TrendingNewsListviewState extends State<TrendingNewsListview> {
  List<NewsModel> trending_news_List = [];
  @override
  void initState() {
    super.initState();
    get_news();
  }

  get_news() async {
    trending_news_List = await TrendingNewsServices().gettrending_news();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: trending_news_List.length,
        (context, index) {
          return TrendingNewsItem(
            newsModel: trending_news_List[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_news/helper.dart';
import 'package:flutter_news/services/trending_news_services.dart';
import 'package:flutter_news/widgets/news_item.dart';

// ignore: must_be_immutable
class Trending_News_Page extends StatefulWidget {
  Trending_News_Page({super.key});
  String? title;
  @override
  State<Trending_News_Page> createState() => _Trending_News_PageState();
}

class _Trending_News_PageState extends State<Trending_News_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Trending News"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: FutureBuilder(
        future: TrendingNewsServices().gettrending_news(),

        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: News_item(
                    onTap: () {
                      openExternalUrl("${snapshot.data![index].url}");
                    },
                    newsModel: snapshot.data![index],
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

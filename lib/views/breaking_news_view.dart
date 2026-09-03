import 'package:flutter/material.dart';
import 'package:flutter_news/services/get_breaking_news.dart';
import 'package:flutter_news/services/trending_news_services.dart';
import 'package:flutter_news/widgets/news_item.dart';

// ignore: must_be_immutable
class Breaking_News_Page extends StatefulWidget {
  Breaking_News_Page({super.key});
  String? title;
  @override
  State<Breaking_News_Page> createState() => _Breaking_News_PageState();
}

class _Breaking_News_PageState extends State<Breaking_News_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Breaking News"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: FutureBuilder(
        future: GetBreakingNews().getbreaking_news(),

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
                  child: News_item(newsModel: snapshot.data![index]),
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

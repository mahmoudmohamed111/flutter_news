import 'package:flutter/material.dart';
import 'package:flutter_news/helper.dart';
import 'package:flutter_news/services/get_category_news.dart';
import 'package:flutter_news/widgets/news_item.dart';

// ignore: must_be_immutable
class CategoryView extends StatefulWidget {
  CategoryView({super.key});
  String? title;
  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    final Page_name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(Page_name),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: FutureBuilder(
        future: GetCategoryNews().getcategory_news(category_name: Page_name),

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
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_news/services/get_category_news.dart';

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
      appBar: AppBar(title: Text(Page_name)),
      body: FutureBuilder(
        future: GetCategoryNews().getcategory_news(category_name: Page_name),

        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Text("data");
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

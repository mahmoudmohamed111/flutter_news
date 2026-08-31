import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/category_item.dart';

class categories_listview extends StatelessWidget {
  const categories_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Categories_item();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_news/models/category_model.dart';
import 'package:flutter_news/views/category_view.dart';
import 'package:flutter_news/widgets/category_item.dart';

class categories_listview extends StatelessWidget {
  categories_listview({super.key});
  final List<CategoryModel> category_List = [
    CategoryModel(
      image:
          "https://plus.unsplash.com/premium_photo-1681488098851-e3913f3b1908?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      categoryName: "world",
    ),
    CategoryModel(
      image:
          "https://plus.unsplash.com/premium_photo-1683134479351-134d66fda33a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8YnVzaW5lc3N8ZW58MHx8MHx8fDA%3D",
      categoryName: "business",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      categoryName: "technology",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfHx8MA%3D%3D",
      categoryName: "entertainment",
    ),
    CategoryModel(
      image:
          "https://plus.unsplash.com/premium_photo-1661432575489-b0400f4fea58?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c2NpZW5jZXxlbnwwfHwwfHx8MA%3D%3D",
      categoryName: "science",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhlYWx0aHxlbnwwfHwwfHx8MA%3D%3D",
      categoryName: "health",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: category_List.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return CategoryView();
                },
                settings: RouteSettings(
                  arguments: category_List[index].categoryName,
                ),
              ),
            );
          },
          child: Categories_item(categoryModel: category_List[index]),
        );
      },
    );
  }
}

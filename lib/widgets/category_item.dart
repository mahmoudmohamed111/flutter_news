import 'package:flutter/material.dart';
import 'package:flutter_news/models/category_model.dart';

class Categories_item extends StatelessWidget {
  Categories_item({super.key, required this.categoryModel});
  CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(categoryModel.image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

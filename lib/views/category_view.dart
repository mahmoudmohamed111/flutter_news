import 'package:flutter/material.dart';

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
      body: Center(child: Text(Page_name)),
    );
  }
}

import 'package:flutter/material.dart';

class Breaking_news_item extends StatelessWidget {
  final String imagePath;
  final int? index;
  String News_title;
  Breaking_news_item({
    required this.News_title,
    super.key,
    required this.imagePath,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 10, bottom: 10),
            child: Text(
              News_title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

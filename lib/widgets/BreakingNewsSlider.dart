import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_news/models/news_model.dart';
import 'package:flutter_news/services/get_breaking_news.dart';
import 'package:flutter_news/services/trending_news_services.dart';
import 'package:flutter_news/widgets/breaking_news_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BreakingNewsSlider extends StatefulWidget {
  const BreakingNewsSlider({Key? key}) : super(key: key);

  @override
  State<BreakingNewsSlider> createState() => _BreakingNewsSliderState();
}

class _BreakingNewsSliderState extends State<BreakingNewsSlider> {
  int activeIndex = 0;

  List<NewsModel> newsImages = [];
  @override
  void initState() {
    super.initState();
    getBreakingNews();
  }

  Future<void> getBreakingNews() async {
    newsImages = await GetBreakingNews().getbreaking_news();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 16),
          CarouselSlider.builder(
            itemCount: newsImages.isEmpty ? newsImages.length : 4,
            itemBuilder: (context, index, realIndex) {
              final imagePath = newsImages[index];
              return Breaking_news_item(
                News_title: newsImages[index].title ?? "",
                imagePath:
                    imagePath.image ??
                    "https://images.unsplash.com/photo-1604966795869-8df0b4517138?q=80&w=871&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                index: index,
              );
            },
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),

          const SizedBox(height: 12),

          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: newsImages.isEmpty ? newsImages.length : 4,
      effect: const ExpandingDotsEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: Colors.blue,
        dotColor: Colors.grey,
        spacing: 6,
      ),
    );
  }
}

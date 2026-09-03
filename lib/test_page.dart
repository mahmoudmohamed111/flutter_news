import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BreakingNewsSlider extends StatefulWidget {
  const BreakingNewsSlider({Key? key}) : super(key: key);

  @override
  State<BreakingNewsSlider> createState() => _BreakingNewsSliderState();
}

class _BreakingNewsSliderState extends State<BreakingNewsSlider> {
  int activeIndex = 0;

  final List<String> newsImages = [
    'https://images.unsplash.com/photo-1788031232074-4257be937185?q=80&w=388&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1788080567027-cdfc4ba881fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyN3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1788070637333-68ec4e640086?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1788195430420-f3dd75a9a767?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1788145653903-1edec70eb4c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyM3x8fGVufDB8fHx8fA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200),
          CarouselSlider.builder(
            itemCount: newsImages.length,
            itemBuilder: (context, index, realIndex) {
              final imagePath = newsImages[index];
              return buildImage(imagePath, index);
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

  Widget buildImage(String imagePath, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: newsImages.length,
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

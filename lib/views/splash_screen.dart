import 'package:flutter/material.dart';
import 'package:flutter_news/views/home_view.dart';
import 'package:flutter_news/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.60,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(30),
                child: Image.network(
                  fit: BoxFit.fill,
                  "https://thumb.wikimedia.org/wikipedia/commons/thumb/2/27/Rua_Augusta_Arch_%28Lisbon%29_01.jpg/960px-Rua_Augusta_Arch_%28Lisbon%29_01.jpg?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail&_=20250525132348",
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            textAlign: TextAlign.center,
            "News from around the \n world for you",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Text(
            textAlign: TextAlign.center,
            "Best time to read, take your time to read \n a little more of this world",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 19,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomButton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeView();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_news/models/news_model.dart';
// import 'package:flutter_news/services/trending_news_services.dart';

// class TestPage {
//   final Dio dio = Dio();
//   gettrending_news() async {
//     try {
//       final response = await dio.get(
//         "https://newsdata.io/api/1/market?apikey=pub_1e3cde18606d4e3d8a34c621e717390d",
//       );

//       final List<dynamic> articles = response.data["results"];
//       for (var article in articles) {
//         print(article["title"]);
//       }

//       final List<NewsModel> articlesList = articles
//           .map(
//             (article) => NewsModel(
//               image: article['image_url'],
//               title: article['title'],
//               subTitle: article['description'],
//             ),
//           )
//           .toList();
//       print(articlesList);
//     } on DioException catch (e) {
//       print("Dio error: ${e.message}");
//       if (e.response != null) {
//         print("Response data: ${e.response?.data}");
//       }
//       return [];
//     } catch (e) {
//       print("Unexpected error: $e");
//       return [];
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_news/helper.dart';
import 'package:flutter_news/models/news_model.dart';
import 'package:flutter_news/services/get_breaking_news.dart';
import 'package:flutter_news/services/trending_news_services.dart';
import 'package:url_launcher/url_launcher.dart';

class Test_Widget extends StatefulWidget {
  const Test_Widget({super.key});

  @override
  State<Test_Widget> createState() => _Test_WidgetState();
}

class _Test_WidgetState extends State<Test_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Page")),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: GetBreakingNews().getbreaking_news(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        onPressed: () =>
                            openExternalUrl("${snapshot.data![index].url}"),
                        child: const Text('فتح الرابط'),
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

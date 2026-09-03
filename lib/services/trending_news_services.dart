import 'package:dio/dio.dart';
import 'package:flutter_news/models/news_model.dart';

class TrendingNewsServices {
  final Dio dio = Dio();
  String apikey = "pub_24e2d97b4ba74bae97d4640ce0589530";

  Future<List<NewsModel>> gettrending_news() async {
    try {
      final response = await dio.get(
        "https://newsdata.io/api/1/crypto?apikey=$apikey",
      );

      final List<dynamic> articles = response.data["results"];
      // ignore: unused_local_variable
      for (var article in articles) {}

      final List<NewsModel> articlesList = articles
          .map(
            (article) => NewsModel(
              image: article['image_url'],
              title: article['title'],
              subTitle: article['description'],
              url: article["link"],
            ),
          )
          .toList();
      return articlesList;
    } on DioException catch (e) {
      print("Dio error: ${e.message}");
      if (e.response != null) {
        print("Response data: ${e.response?.data}");
      }
      return [];
    } catch (e) {
      print("Unexpected error: $e");
      return [];
    }
  }
}

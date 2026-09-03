import 'package:dio/dio.dart';
import 'package:flutter_news/models/news_model.dart';

class TrendingNewsServices {
  final Dio dio = Dio();

  Future<List<NewsModel>> gettrending_news() async {
    try {
      final response = await dio.get(
        "https://newsdata.io/api/1/latest?apikey=pub_4846091e6bd663d0ff61dc70920a4841c18de&country=eg&category=sports",
      );

      final Map<String, dynamic> jsonData = response.data;

      final List<dynamic>? articles = jsonData['results'];

      if (articles == null) {
        print("No 'results' key found. Full response: $jsonData");
        return [];
      }

      final List<NewsModel> articlesList = articles
          .map(
            (article) => NewsModel(
              image: article['image_url'],
              title: article['title'],
              subTitle: article['description'],
            ),
          )
          .toList();
      print(articlesList.length);
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

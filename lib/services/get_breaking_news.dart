import 'package:dio/dio.dart';
import 'package:flutter_news/models/news_model.dart';

class GetBreakingNews {
  final Dio dio = Dio();

  Future<List<NewsModel>> getbreaking_news() async {
    try {
      final response = await dio.get(
        "https://newsdata.io/api/1/market?apikey=pub_1e3cde18606d4e3d8a34c621e717390d&country=eg",
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
            ),
          )
          .toList();
      print(articlesList);
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

class NewsModel {
  String? title;
  String? subTitle;
  String? image;
  NewsModel({required this.title, required this.subTitle, required this.image});
  factory NewsModel.fromJson(json) {
    return NewsModel(
      title: json['title'] as String,
      subTitle: json['description'] as String,
      image: json['urlToImage'] as String,
    );
  }
}

class NewsModel {
  String title;
  String subTitle;
  String? image;
  NewsModel({required this.title, required this.subTitle, required this.image});
  factory NewsModel.fromJson(json) {
    return NewsModel(
      title: json['title'] ?? '',
      subTitle: json['description'] ?? '',
      image: json['urlToImage'] ?? '',
    );
  }
}

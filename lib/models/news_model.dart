class NewsModel {
  String? title;
  String? subTitle;
  String? image;
  String? url;
  NewsModel({
    this.url,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  factory NewsModel.fromJson(json) {
    return NewsModel(
      url: json["link"] as String,
      title: json['title'] as String,
      subTitle: json['description'] as String,
      image: json['urlToImage'] as String,
    );
  }
}

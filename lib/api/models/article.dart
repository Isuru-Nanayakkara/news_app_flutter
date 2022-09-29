import 'package:json_annotation/json_annotation.dart';
import 'package:news_app_flutter/api/models/source.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  Source source;
  String? author;
  String title;
  String description;
  String url;
  @JsonKey(name: 'urlToImage')
  String imageUrl;
  String publishedAt;
  @JsonKey(name: 'content')
  String summary;

  Article({
    required this.source,
    this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
    required this.publishedAt,
    required this.summary,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

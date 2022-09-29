import 'package:json_annotation/json_annotation.dart';
import 'package:news_app_flutter/api/models/article.dart';

part 'top_headlines_response.g.dart';

@JsonSerializable()
class TopHeadlinesResponse {
  String status;
  int totalResults;
  List<Article> articles;

  TopHeadlinesResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory TopHeadlinesResponse.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TopHeadlinesResponseToJson(this);
}

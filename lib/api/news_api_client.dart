import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:news_app_flutter/api/endpoints/top_headlines_endpoint.dart';
import 'package:news_app_flutter/api/models/article.dart';
import 'package:news_app_flutter/api/models/top_headlines_response.dart';
import 'package:news_app_flutter/api/news_api.dart';

class NewsApiClient implements NewsApi {
  final Client client;

  static const String _baseUrl = 'newsapi.org';
  static const String _apiKey = '900749c54c0847689e44b36abc913666';

  NewsApiClient({required this.client});

  @override
  Future<List<Article>> getTopHeadlines(
      {required NewsCategory category, required int page}) async {
    final uri = TopHeadlinesEndpoint(
      apiBaseUrl: _baseUrl,
      apiKey: _apiKey,
      category: category.name,
      page: page,
    ).uri;
    print(uri.toString());

    final httpResponse = await client.get(uri);
    final json = jsonDecode(httpResponse.body);
    final response = TopHeadlinesResponse.fromJson(json);

    print('Status: ${response.status}');
    print('Total results: ${response.totalResults}');
    print('Articles: ${response.articles.length}');

    return response.articles;
  }

  @override
  Future<String> getTopHeadlinesSources({required String category}) {
    throw UnimplementedError();
  }

  @override
  Future<String> searchNews(
      {required String query, required int page, SortOption? sortBy}) {
    throw UnimplementedError();
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_flutter/api/endpoints/top_headlines_endpoint.dart';
import 'package:news_app_flutter/api/models/top_headlines_response.dart';
import 'package:news_app_flutter/api/news_api.dart';

class NewsApiClient implements NewsApi {
  final http.Client client;

  static const String _baseUrl = 'newsapi.org';
  static const String _apiKey = '900749c54c0847689e44b36abc913666';

  NewsApiClient({required this.client});

  @override
  Future<String> getTopHeadlines(
      {required String category, required int page}) async {
    final uri = TopHeadlinesEndpoint(
      apiBaseUrl: _baseUrl,
      apiKey: _apiKey,
      category: category,
      page: page,
    ).uri;
    print(uri.toString());

    final response = await client.get(uri);
    final json = jsonDecode(response.body);
    final r = TopHeadlinesResponse.fromJson(json);
    print(r.status);
    print(r.totalResults);
    print('Articles: ${r.articles.length}');

    return Future.value('');
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

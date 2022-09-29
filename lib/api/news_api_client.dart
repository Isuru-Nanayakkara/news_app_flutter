import 'package:news_app_flutter/api/endpoints/top_headlines_endpoint.dart';
import 'package:news_app_flutter/api/news_api.dart';

class NewsApiClient implements NewsApi {
  @override
  Future<String> getTopHeadlines(
      {required String category, required int page}) {
    final uri = TopHeadlinesEndpoint(category: category, page: page).uri;
    print(uri.toString());

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

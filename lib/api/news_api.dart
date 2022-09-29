abstract class NewsApi {
  Future<String> getTopHeadlines(
      {required NewsCategory category, required int page});
  Future<String> getTopHeadlinesSources({required String category});
  Future<String> searchNews(
      {required String query, required int page, SortOption? sortBy});
}

enum NewsCategory {
  general,
  business,
  science,
  entertainment,
  technology,
  health,
  sports,
}

enum SortOption {
  relevancy,
  popularity,
  publishedAt,
}

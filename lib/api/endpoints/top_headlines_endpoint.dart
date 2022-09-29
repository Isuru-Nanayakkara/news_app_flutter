class TopHeadlinesEndpoint {
  final String apiBaseUrl;
  final String apiKey;
  final String category;
  final int page;

  final String apiVersion = 'v2';
  final String language = 'en';
  final int pageSize = 10;

  TopHeadlinesEndpoint({
    required this.apiBaseUrl,
    required this.apiKey,
    required this.category,
    required this.page,
  });

  Uri get uri {
    Uri uri = Uri(
        scheme: 'https',
        host: apiBaseUrl,
        path: '/$apiVersion/top-headlines',
        queryParameters: {
          'apiKey': apiKey,
          'category': category,
          'pageSize': pageSize.toString(),
          'language': language,
        });

    return uri;
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:news_app_flutter/api/models/top_headlines_response.dart';
import 'package:news_app_flutter/api/news_api.dart';
import 'package:news_app_flutter/api/news_api_client.dart';

void main() {
  Map<String, dynamic> _getTopHeadlinesResponseJson() {
    return {
      "status": "ok",
      "totalResults": 428,
      "articles": [
        {
          "source": {"id": null, "name": "Livemint"},
          "author": "Vijay Kishore",
          "title":
              "Stock Market LIVE: Sensex sheds 200 pts; Asian Paints lags, Hindalco shines | Mint - Mint",
          "description":
              "Share Market LIVE Update: Indices started on a positive note on Thursday but since have trimmed most of the gains and are trading in the red. Sensex and Nifty have lost 200 and 50 points respectively. IT and Consumer Durables drag the market, while Pharma and…",
          "url":
              "https://www.livemint.com/market/stock-market-news/share-market-live-updates-sensex-nifty-bse-nse-stock-market-today-29-09-2022-11664413018684.html",
          "urlToImage":
              "https://images.livemint.com/img/2022/09/29/600x338/httpsblankpaperhtdigialincms-backend-service-mtima_1664413294841_1664413295026_1664413295026.jpg",
          "publishedAt": "2022-09-29T08:34:12Z",
          "content":
              "Wall Street gained some confidence to snap the negative trend as the BoE announced it was temporarily buying up long-dated UK government bonds to restore orderly market conditions\" following a histor… [+34706 chars]"
        }
      ]
    };
  }

  test('Should return status "ok" if /top-headlines request was successful',
      () {
    final json = _getTopHeadlinesResponseJson();
    final response = TopHeadlinesResponse.fromJson(json);
    expect(response.status, 'ok');
  });

  test(
      'Should return one or more articles if /top-headlines request was successful',
      () async {
    final client = MockClient((request) async {
      final json = _getTopHeadlinesResponseJson();
      return Response(jsonEncode(json), 200, headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
      });
    });

    final api = NewsApiClient(client: client);
    final response =
        await api.getTopHeadlines(category: NewsCategory.general, page: 1);
    expect(response.length, 1);
  });
}

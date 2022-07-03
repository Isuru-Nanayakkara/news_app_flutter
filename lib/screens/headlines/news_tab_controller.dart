import 'package:flutter/material.dart';

import 'widgets/news_categories_tabbar.dart';
import 'widgets/news_items_list.dart';

class NewsTabController extends StatelessWidget {
  final List<String> newsCategories = [
    'General',
    'Business',
    'Science',
    'Entertaintment',
    'Technology',
    'Health',
    'Sports',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: newsCategories.length,
      child: Scaffold(
        appBar: NewsCategoriesTabBar(newsCategories: newsCategories),
        body: TabBarView(
          children: newsCategories
              .map((category) => NewsItemsList(category: category))
              .toList(),
        ),
      ),
    );
  }
}

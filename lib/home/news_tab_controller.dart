import 'package:flutter/material.dart';
import 'package:news_app_flutter/data.dart';
import 'package:news_app_flutter/home/news_items_list.dart';
import 'news_category_tab.dart';

class NewsTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: newsCategories.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: Color.fromRGBO(232, 51, 36, 1),
                indicatorWeight: 4,
                tabs: newsCategories
                    .map((category) => NewsCategoryTab(title: category))
                    .toList(),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: newsCategories
              .map((category) => NewsItemsList(category: category))
              .toList(),
        ),
      ),
    );
  }
}

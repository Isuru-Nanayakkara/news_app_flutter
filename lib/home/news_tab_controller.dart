import 'package:flutter/material.dart';
import 'news_category_tab.dart';

class NewsTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
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
                tabs: [
                  NewsCategoryTab(title: 'General'),
                  NewsCategoryTab(title: 'Business'),
                  NewsCategoryTab(title: 'Science'),
                  NewsCategoryTab(title: 'Technology'),
                  NewsCategoryTab(title: 'Entertaintment'),
                  NewsCategoryTab(title: 'Health'),
                  NewsCategoryTab(title: 'Sports'),
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Container(child: Text('All News'))),
            Center(child: Container(child: Text('Business News'))),
            Center(child: Container(child: Text('Science News'))),
            Center(child: Container(child: Text('Technology News'))),
            Center(child: Container(child: Text('Entertaintment News'))),
            Center(child: Container(child: Text('Health News'))),
            Center(child: Container(child: Text('Sports News'))),
          ],
        ),
      ),
    );
  }
}

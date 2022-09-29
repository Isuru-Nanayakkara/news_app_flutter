import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_flutter/api/news_api.dart';
import 'package:news_app_flutter/api/news_api_client.dart';

class HeadlinesScreen extends StatefulWidget {
  final List<String> categories = [
    'General',
    'Business',
    'Science',
    'Entertaintment',
    'Technology',
    'Health',
    'Sports',
  ];

  HeadlinesScreen({Key? key}) : super(key: key);

  @override
  State<HeadlinesScreen> createState() => _HeadlinesScreenState();
}

class _HeadlinesScreenState extends State<HeadlinesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: widget.categories.length, vsync: this);
    _tabController.addListener(() {
      debugPrint(
          'Selected category: ${widget.categories[_tabController.index]}');
    });

    var apiClient = NewsApiClient(client: http.Client());
    apiClient.getTopHeadlines(category: NewsCategory.general, page: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'News App',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            color: Colors.black,
            iconSize: 34,
            onPressed: () {
              print('Search button tapped');
            },
          ),
          SizedBox(width: 8),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Colors.black,
          indicatorColor: const Color.fromRGBO(232, 51, 36, 1),
          indicatorWeight: 4,
          tabs: widget.categories
              .map((category) => Tab(
                    child: Text(
                      category,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: widget.categories
            .map((category) => Center(child: Text(category)))
            .toList(),
      ),
    );
  }
}

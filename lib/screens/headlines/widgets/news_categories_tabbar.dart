import 'package:flutter/material.dart';

import 'news_category_tab.dart';

class NewsCategoriesTabBar extends StatelessWidget
    implements PreferredSizeWidget {
  final List<String> newsCategories;

  const NewsCategoriesTabBar({
    Key? key,
    required this.newsCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

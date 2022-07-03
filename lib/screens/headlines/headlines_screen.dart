import 'package:flutter/material.dart';

import 'news_tab_controller.dart';
import 'widgets/headlines_appbar.dart';

class HeadlinesScreen extends StatelessWidget {
  const HeadlinesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadlinesAppBar(),
      body: NewsTabController(),
    );
  }
}

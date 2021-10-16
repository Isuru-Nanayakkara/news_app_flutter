import 'package:flutter/material.dart';

import 'home_appbar.dart';
import 'news_tab_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: NewsTabController(),
    );
  }
}

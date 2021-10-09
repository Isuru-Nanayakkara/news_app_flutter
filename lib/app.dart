import 'package:flutter/material.dart';
import 'home/home_appbar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: HomeAppBar(),
        body: Text('This is my news app'),
      ),
    );
  }
}

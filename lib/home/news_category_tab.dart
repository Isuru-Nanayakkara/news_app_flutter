import 'package:flutter/material.dart';

class NewsCategoryTab extends StatelessWidget {
  final String title;

  const NewsCategoryTab({required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}

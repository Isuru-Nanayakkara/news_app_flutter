import 'package:flutter/material.dart';

class HeadlinesAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
        child: Text('News'),
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
      leadingWidth: 150,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

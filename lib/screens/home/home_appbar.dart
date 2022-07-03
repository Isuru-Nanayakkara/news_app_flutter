import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.fitWidth,
        ),
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
        SizedBox(width: 10),
        CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
        SizedBox(width: 20),
      ],
      leadingWidth: 150,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

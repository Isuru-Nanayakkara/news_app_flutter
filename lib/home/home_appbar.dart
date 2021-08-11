import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
            child: Image.asset('assets/images/logo.png', fit: BoxFit.fitWidth)),
        leadingWidth: 150,
        backgroundColor: Colors.grey,
        elevation: 0);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

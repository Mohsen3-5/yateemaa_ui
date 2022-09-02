import 'package:flutter/material.dart';
import 'package:yateemaa_ui/module/keys.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  appbar({
    required this.appbarTitle,
    this.height = kToolbarHeight,
    this.icon = Icons.home,
  });
  final String appbarTitle;
  final double height;
  final IconData icon;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          appbarTitle,
        ),
        leading: Icon(icon),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {
                keys.josKeys1.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                stops: const [
                  0.2,
                  2.1,
                ],
                colors: <Color>[
                  Theme.of(context).primaryColor,
                  Color(0xff03e7797),
                ]),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_task/Routes/routes.dart';
import 'package:flutter_task/screen/home.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;

  final screens = const [Home()];

  final item = const <Widget>[
    Icon(
      Icons.home,
      color: Colors.black38,
    ),
    Icon(
      Icons.favorite,
      color: Colors.black38,
    ),
    Icon(
      Icons.settings,
      color: Colors.black38,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
            print(index);
          });
        },
        items: item,
      ),
      body: Container(
          // child: getSelectedIndex(index: index),
          ),
    );
  }

  // Widget getSelectedIndex({required int index}) {
  //   Widget widget;
  //   switch (index) {
  //     case 1:
  //       Routes.push(const Home(), context);
  //       break;
  //   }
  //   return index;
  // }
}

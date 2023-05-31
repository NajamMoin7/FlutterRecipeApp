import 'package:flutter/material.dart';

import '../widget/bottomNavigationbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Text(
            "Home Page",
            style: TextStyle(fontSize: 40, color: Colors.white),
          )
        ]),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}

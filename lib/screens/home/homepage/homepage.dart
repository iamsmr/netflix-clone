import 'package:flutter/material.dart';

import 'package:netflix_clone/screens/home/homepage/widget/nav-bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: NavBar(),
      ),
    );
  }
}


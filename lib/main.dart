import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/landing-screen/landing-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.red,
        // brightness: Brightness.dark,
        dividerColor: Colors.grey[900],
        fontFamily: "Netflix Sans",
      ),
      debugShowCheckedModeBanner: false,
      home: LandingScreen(),
    );
  }
}

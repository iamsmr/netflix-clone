import 'package:flutter/material.dart';
import 'package:netflix_clone/config/custom-router.dart';
import 'package:netflix_clone/screens/home/browse/profile-browse.dart';
import 'package:netflix_clone/screens/home/homepage/homepage.dart';
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
        dividerColor: Colors.grey[900],
        brightness: Brightness.dark,
        fontFamily: "Netflix Sans",
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CoustomRoute.onGenerateRoute,
      // home: LandingScreen(),
      home: ProfileBrowse(),
      // home: HomePage(),
    );
  }
}

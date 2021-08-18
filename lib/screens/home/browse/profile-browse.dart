import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/center-view.dart';
import 'package:netflix_clone/widgets/netflix-logo.dart';

class ProfileBrowse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141414),
      body: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: NetflixLogo(),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Who's watching ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                CenterView(
                  child: Wrap(
                    children: [
                      Image.asset("assets/images/profile-1.png", height: 200),
                      SizedBox(width: 25),
                      Image.asset("assets/images/profile-2.png", height: 200),
                      SizedBox(width: 25),
                      Image.asset("assets/images/profile-3.png", height: 200),
                      SizedBox(width: 25),
                      Image.asset("assets/images/profile-4.png", height: 200),
                      SizedBox(width: 25),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 1),
                  ),
                  color: Colors.transparent,
                  child: Text(
                    "MANAGE PROFILE",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.3,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }
}

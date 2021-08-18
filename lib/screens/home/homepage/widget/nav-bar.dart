import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/netflix-logo.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NetflixLogo(),
          SizedBox(width: 60),
          Row(
            children: [
              NavItem(text: "Home"),
              NavItem(text: "TV Shows"),
              NavItem(text: "Movies"),
              NavItem(text: "Latest"),
              NavItem(text: "My List"),
              NavItem(text: "Watch Again"),
            ],
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Text("KIDS", style: TextStyle(color: Colors.white, fontSize: 15)),
          SizedBox(width: 20),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String text;
  const NavItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey[300],
          fontSize: 15,
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/widgets.dart';

class WatchEveryWare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Watch everywhere.",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Save your favorites easily and always have something to watch.",
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

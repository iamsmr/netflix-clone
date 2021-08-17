
import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/center-view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ForKid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: ScreenTypeLayout(
        mobile: Column(
          children: [
            _content(isMobile: true),
            _animation(),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_animation(), Expanded(child: _content())],
        ),
      ),
    );
  }

  Widget _content({bool isMobile = false}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            "Create profiles for kids.",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Send kids on adventures with their favorite characters in a space made just for them—free with your membership.",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _animation() {
    return Container(
      width: 500,
      height: 350,
      child: Image.asset(
        "assets/images/kid-feature.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

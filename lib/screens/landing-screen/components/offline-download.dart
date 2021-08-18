import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/center-view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OfflineDownload extends StatelessWidget {
  const OfflineDownload({Key? key}) : super(key: key);

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
            "Download your shows\nto watch offline.",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Save your favorites easily and always have something to watch.",
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
        "assets/images/mobile.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}

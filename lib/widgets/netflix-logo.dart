import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NetflixLogo extends StatelessWidget {
  const NetflixLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _image(30), tablet: _image(35), desktop: _image(37));
  }

  Widget _image(double size) {
    return Container(
      height: size,
      child: Image.asset('assets/images/netflix-logo-full.png'),
    );
  }
}

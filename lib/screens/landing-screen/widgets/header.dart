import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/authentication/sign-in.dart';
import 'package:netflix_clone/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Stack(
          children: [
            Container(
              height: size.height * 0.80,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/netflix-background-image.jpg',
                  ),
                ),
              ),
              child: Container(color: Colors.black.withOpacity(.5)),
            ),
            Container(
              height: size.height * 0.80,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  NetflixLogo(),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, SignIn.routeName),
                    child: Text("Sign In"),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.80,
              width: size.width,
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Unlimited movies, TV\nshows, and more.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: sizingInformation.isMobile ? 40 : 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Watch anywhere. Cancel anytime.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: sizingInformation.isMobile ? 19 : 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Ready to watch? Enter your email to create or restart your membership.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  SubscribeButton()
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

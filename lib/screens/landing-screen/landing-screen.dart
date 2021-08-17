import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/netflix-logo.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Divider(thickness: 9),
            Container(height: 300),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                onPressed: () {},
                child: Text("Sign In"),
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.80,
          width: size.width,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Unlimited movies, TV\nshows, and more.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                "Watch anywhere. Cancel anytime.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.white),
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
  }
}

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _textField() {
      return Container(
        width: 500,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            fillColor: Colors.white,
            filled: true,
            hintText: "Email Address",
          ),
        ),
      );
    }

    Widget _button() {
      return MaterialButton(
        onPressed: () {},
        height: 70,
        minWidth: 200,
        color: Colors.red,
        textColor: Colors.white,
        child: Text(
          "Get Started",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    return ScreenTypeLayout(
      mobile: Column(
        children: [
          _textField(),
          SizedBox(height: 20),
          _button(),
        ],
      ),
      desktop: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textField(),
            _button(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/netflix-logo.dart';

class SignIn extends StatelessWidget {
  static const String routeName = "/login";
  const SignIn({Key? key}) : super(key: key);

  static Route route() => PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (context, _, __) => SignIn());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/netflix-background-image.jpg"),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.7),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.5),
                  Colors.black,
                ],
              ),
            ),
            padding: EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(alignment: Alignment.topLeft, child: NetflixLogo()),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 450,
                      height: 660,
                      padding: EdgeInsets.all(60),
                      color: Colors.black.withOpacity(.7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 25),
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey[900],
                              labelStyle: TextStyle(color: Colors.grey[700]),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              labelText: "Email or Phone Number",
                              filled: true,
                            ),
                          ),
                          SizedBox(height: 25),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[900],
                              labelStyle: TextStyle(color: Colors.grey[700]),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              labelText: "Password",
                              filled: true,
                            ),
                          ),
                          SizedBox(height: 40),
                          MaterialButton(
                            height: 55,
                            minWidth: double.infinity,
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Sing In"),
                            onPressed: () {},
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.grey,
                                checkColor: Colors.black.withOpacity(.7),
                                value: true,
                                onChanged: (val) {},
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Need Help?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  'assets/images/facebook-icon.png',
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Login with Facebook",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "New to Netflix? ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "Sign up now.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "This page is protected by Google reCAPTCHA to ensure you're not a bot. Learn more",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

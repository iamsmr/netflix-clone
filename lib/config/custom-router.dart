import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/authentication/sign-in.dart';

class CoustomRoute {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    print("Route: ${routeSettings.name}");
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/"),
          builder: (_) => Scaffold(),
        );

      case SignIn.routeName:
        return SignIn.route();
      default:
        return _error();
    }
  }

  static MaterialPageRoute _error() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(
          child: Text("Someting went wrong"),
        ),
      ),
    );
  }
}

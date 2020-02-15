import 'package:fltr_graziamaroc/app.dart';
import 'package:fltr_graziamaroc/views/detail.dart';
import 'package:flutter/material.dart';

const String initialRoute = "/";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => App());
      case '/detail':
        return MaterialPageRoute(builder: (_) => Detail());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

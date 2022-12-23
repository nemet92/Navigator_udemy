import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_udeny/main.dart';
import 'package:navigation_udeny/orange_page.dart';
import 'package:navigation_udeny/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(Widget gidilecekWidget) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(builder: (context) => gidilecekWidget);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(builder: (context) => gidilecekWidget);
    } else {
      return CupertinoPageRoute(builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(const HomePage());

      case '/orangePage':
        return _routeOlustur(const OrangePage());
      case '/yellowPage':
        return _routeOlustur(const YellowPage());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: const Text("Error"),
                  ),
                  body: const Center(child: Text("Error 404")),
                ));
    }
    return null;
  }
}

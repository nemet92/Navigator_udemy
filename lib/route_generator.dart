import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_udeny/main.dart';
import 'package:navigation_udeny/ogrenci_listesi.dart';
import 'package:navigation_udeny/orange_page.dart';
import 'package:navigation_udeny/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    } else {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(const HomePage(), settings);
      case '/orangePage':
        return _routeOlustur(const OrangePage(), settings);
      case '/yellowPage':
        return _routeOlustur(const YellowPage(), settings);
      case '/ogrenciListesi':
        return _routeOlustur(const Ogrencilistesi(), settings);

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

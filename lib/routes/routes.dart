import 'package:flutter/material.dart';
import 'package:routes_in_flutter/pages/main_page.dart';
import 'package:routes_in_flutter/pages/second_page.dart';
import 'package:routes_in_flutter/pages/third_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String secondPage = '/secondPage';
  static const String thirdPage = '/thirdPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;
    if (settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
      case secondPage:
        return MaterialPageRoute(
          builder: (context) => const SecondPage(),
        );
      case thirdPage:
        return MaterialPageRoute(
          builder: (context) => ThirdPage(
            name: valuePassed['name'],
          ),
        );
      default:
        throw const FormatException('Route note found');
    }
  }
}

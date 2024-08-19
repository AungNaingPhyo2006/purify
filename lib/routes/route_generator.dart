import 'package:flutter/material.dart';
import 'package:purify/pages/chanting_page.dart';
import 'package:purify/pages/counter_page.dart';
import 'package:purify/pages/main_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    debugPrint('Navigating to: ${settings.name}');

    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MainPage());

      case '/counter':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => CounterPage(
              data: args,
            ),
          );
        }
        return _errorRoute();

      case '/chanting':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ChantingPage(
              data: args,
            ),
          );
        }
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

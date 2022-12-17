import 'package:autoecoleapp/home.dart';
import 'package:autoecoleapp/inter.dart';
import 'package:autoecoleapp/newshowcase.dart';
import 'package:autoecoleapp/qs.dart';
import 'package:autoecoleapp/qsrep.dart';
import 'package:autoecoleapp/quiz.dart';
import 'package:autoecoleapp/showcase.dart';
import 'showcaseslider.dart';
import 'package:flutter/material.dart';
import 'about.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/quiz':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Quiz(
              data: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      case '/newshowcase':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => NewShowcase(
              data: args,
            ),
          );
        }
        return _errorRoute();
      case '/about':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => About(),
          );
        }
        return _errorRoute();
      case '/inter':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Inter(
              data: args,
            ),
          );
        }
        return _errorRoute();
      case '/r':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ShowcaseSlider(
              data: args,
            ),
          );
        }
        return _errorRoute();

      case '/qsrep':
        if (args is int) {
          return MaterialPageRoute(
            builder: (_) => Qsrep(index: args),
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
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:belajar_navigasi/firstscreen.dart';
import 'package:belajar_navigasi/secondscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case '/second':
        if(args is String){
          return MaterialPageRoute(builder: (_) => SecondScreen(data: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text('Error page')),
        );
    });
  }
}
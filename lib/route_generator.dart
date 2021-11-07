import 'package:cleanmovie/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomeScreen(),
        );
      default : return MaterialPageRoute(
        settings: settings,
        builder: (context) => const HomeScreen(),
        // Kalo bisa lu pake halaman error di sini
      );
    }
  }
}
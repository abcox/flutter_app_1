import 'package:flutter/material.dart';
import 'package:flutter_app_1/page/favorites_page.dart';
import 'package:flutter_app_1/page/home_page.dart';
import 'package:flutter_app_1/page/profile_page.dart';
import 'package:flutter_app_1/page/search_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    //final homePage = MaterialPageRoute(
    //  builder: (_) => const MyHomePage(title: 'Home'),
    final homePage = PageRouteBuilder(
      pageBuilder: (_, __, ___) => const MyHomePage(title: 'Home'),
      //transitionDuration: const Duration(milliseconds: 500),
    );
    final searchPage = PageRouteBuilder(
      pageBuilder: (_, __, ___) => const SearchPage(title: 'Search'),
      //transitionDuration: const Duration(milliseconds: 500),
    );
    final farvoritesPage = PageRouteBuilder(
      pageBuilder: (_, __, ___) => const FavoritesPage(title: 'Favorites'),
      //transitionDuration: const Duration(milliseconds: 500),
    );
    switch (settings.name) {
      case '/':
        return homePage;
      case '/profile':
        // Validation of correct data type
        if (args is String) {
          final profilePage = PageRouteBuilder(
            pageBuilder: (_, __, ___) => ProfilePage(title: args),
            //transitionDuration: const Duration(milliseconds: 500),
          );
          return profilePage;
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return homePage; //_errorRoute();
      case '/search':
        return searchPage;
      case '/favorites':
        return farvoritesPage;
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return homePage; // _errorRoute();
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

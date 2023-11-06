import 'package:flutter/material.dart';
import 'package:flutter_app_1/page/home_page.dart';
import 'package:flutter_app_1/page/profile_page.dart';

class Helpers {
  // REF: https://docs.flutter.dev/release/breaking-changes/buttons?gclid=Cj0KCQjw-pyqBhDmARIsAKd9XIPBN4m8Cuvud-gwjSE-aFwGuyAoGG1ZDlJmwgJ4BeXwhMmaU6TRsqIaAtoyEALw_wcB&gclsrc=aw.ds

  //static const iconData = <String, IconData>{
  //  "home": Icons.home_outlined,
  //  "profile": Icons.person_outline,
  //};
  static const option = <dynamic>[
    {
      "title": "Home",
      "route": "/",
      "icon": Icons.home_outlined,
      "args": {},
      "page": MyHomePage(title: 'Home')
    },
    {
      "title": "Search",
      "route": "/search",
      "icon": Icons.search_outlined,
      "args": {},
      "page": MyHomePage(title: 'Search')
    },
    {
      "title": "Favorites",
      "route": "/favorites",
      "icon": Icons.favorite_outline_outlined,
      "args": {},
      "page": MyHomePage(title: 'Favorites')
    },
    {
      "title": "Profile",
      "route": "/profile",
      "icon": Icons.person_outline,
      "args": 'Test',
      "page": ProfilePage(title: 'Profile Page'),
    },
  ];
  static List<Widget> persistentFooterButtons(context) {
    var buttons = <Widget>[];
    for (final item in option) {
      dynamic page = item['page'];
      TextButton button = TextButton(
          onPressed: () => {
                Navigator.pushReplacementNamed(context, item['route'],
                    arguments:
                        item['args']), // Navigator.pushNamed(context, '/'
                //Navigator.push(context, PageRouteBuilder(pageBuilder: (_, __, ___) => const Scaffold(body: Text('Test')))
                //Navigator.pushReplacement(
                //    context,
                //    PageRouteBuilder(
                //      pageBuilder: (_, __, ___) => page,
                //      //transitionDuration: const Duration(seconds: 5)
                //    ))
              },
          child: Column(
            children: [
              Icon(item['icon'], size: 34),
              Text(item['title'], style: const TextStyle(fontSize: 12))
            ],
          ));
      buttons.add(button);
    }
    ;
    return <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons,
      )
    ];
  }
}

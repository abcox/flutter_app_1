import 'package:flutter/material.dart';
import 'package:flutter_app_1/route-generator.dart';

void main() {
  runApp(const MyApp());
}

//class FadeTransitionBuilder extends PageTransitionsBuilder {
//  @override
//  Widget buildTransitions<T>(_, __, animation, ___, child) =>
//      FadeTransition(opacity: animation, child: child);
//}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        //pageTransitionsTheme: PageTransitionsTheme(builders: {
        //  TargetPlatform.android: FadeTransitionBuilder(),
        //  TargetPlatform.iOS: FadeTransitionBuilder(),
        //}),
      ),
      //home: const MyHomePage(title: 'Home'),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

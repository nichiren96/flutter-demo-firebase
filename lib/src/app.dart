import 'package:cuisine/src/views/screens/register/register_view.dart';
import 'package:cuisine/src/views/screens/splash/splash_view.dart';
import "package:flutter/material.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashView(),
        debugShowCheckedModeBanner: false,);
  }
}

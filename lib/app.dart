import 'package:flutter/material.dart';
import 'package:hadi/src/Pages/homepage.dart';
import 'package:hadi/src/Pages/login.dart';
import 'package:hadi/src/Pages/splash_screen.dart';





class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),

      initialRoute: "/",
      routes: {
        "/" : (context) => new SplashScreen(),
        "/Login" : (context) => new Login(),
        "/homepage" : (context) => new HomePage()

      },




    );
  }
}

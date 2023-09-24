import 'package:flutter/material.dart';
import 'package:islamy/ui/screens/home/details_screen/details_screen.dart';
import 'package:islamy/ui/screens/home/home_screen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
      DetailScreen.routeName: (context) => DetailScreen(),
    },
    initialRoute: HomeScreen.routeName,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        )),
  ));
}

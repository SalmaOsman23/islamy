import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/ui/screens/home/home_screen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
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

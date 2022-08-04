import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          brightness: Brightness.dark,
        ),
        routes: {
          "/Login_Page": (context) => LoginPage(),
          "/Home_Page": (context) => HomePage(),
          "/": ((context) => LoginPage())
        });
  }
}

// ignore_for_file: deprecated_member_use

import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utlis/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.HomeRoute,
        routes: {
          MyRoutes.LoginRoute: (context) => LoginPage(),
          MyRoutes.HomeRoute: (context) => HomePage(),
          "/": ((context) => LoginPage())
        });
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var n = 1;
  var pi = 3.146;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: (Text("Catalog App")))),
        drawer: Drawer(),
        body: Center(child: Container(child: Text("Welcome!"))));
  }
}

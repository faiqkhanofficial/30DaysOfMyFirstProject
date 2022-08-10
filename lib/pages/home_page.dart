import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/Drawer.dart';

class HomePage extends StatelessWidget {
  var n = 1;
  var pi = 3.146;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: (Text("Catalog App")))),
        drawer: MyDrawer(),
        body: Center(child: Container(child: Text("Welcome!"))));
  }
}

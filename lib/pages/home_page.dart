import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/Drawer.dart';
import 'package:flutter_catalog/widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  var n = 1;
  var pi = 3.146;
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(11, (index) => CatalogModels.Items[0]);
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          "Catalog App",
        ))),
        body: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummylist[index],
              );
            }),
        drawer: MyDrawer());
  }
}

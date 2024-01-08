import 'package:classico/Widgets/Home%20page/home_catalog_item.dart';
import 'package:classico/models/catalog.dart';
import 'package:classico/pages/HomePage.dart';
import 'package:classico/pages/home_details.dart';
import 'package:flutter/material.dart';

class CataLogList extends StatelessWidget {
  const CataLogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final Item catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(catalog: catalog),
                ),
              );
            },
            child: CatalogItem(catalog: catalog),
          );
        });
  }
}

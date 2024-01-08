import 'package:classico/Widgets/Home%20page/home_catalog_list.dart';
import 'package:classico/Widgets/Home%20page/home_page_header.dart';
import 'package:classico/Widgets/drawer.dart';
import 'package:classico/Widgets/item_widget.dart';
import 'package:classico/Widgets/thems.dart';
import 'package:classico/models/catalog.dart';
import 'package:classico/pages/cart_page.dart';
import 'package:classico/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    var cataLogJson = await rootBundle.loadString('assets/files/catalog.json');
    var decodeJson = jsonDecode(cataLogJson);
    var products = decodeJson['products'];

    CatalogModel.items =
        List.from(products).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(PageAnimationTransition(
                page: CartPage(), pageAnimationType: RightToLeftTransition()));
          },
          child: Icon(
            CupertinoIcons.shopping_cart,
          ),
        ),
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                if (CatalogModel.items.isNotEmpty && CatalogModel.items != null)
                  const CataLogList().expand()
                else
                  const Center(
                    child: CircularProgressIndicator(),
                  ).expand()
              ],
            ),
          ),
        ));
  }
}

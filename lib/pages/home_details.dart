import 'package:classico/Widgets/Home%20page/home_catalog_item.dart';
import 'package:classico/Widgets/Home%20page/home_catalog_list.dart';
import 'package:classico/Widgets/thems.dart';
import 'package:classico/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.orange,
        padding: EdgeInsets.all(10.0.h),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "₹ " + catalog.price.toString(),
              style: TextStyle(
                color: MyTheme.darkBluishColor,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(70.w, 30.h),
                backgroundColor: MyTheme.darkBluishColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                'Buy',
                style: TextStyle(fontSize: 14.sp),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 1,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(32.0.w),
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
              ),
            ),
            Expanded(
              child: VxArc(
                edge: VxEdge.top,
                height: 30.0.h,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 32.0.h),
                    child: Column(
                      children: [
                        Text(
                          catalog.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.orangeAccent,
                            fontSize: 25.sp,
                          ),
                        ),
                        Text(
                          catalog.desc,
                          style:
                              TextStyle(color: Colors.black54, fontSize: 14.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 14.w,
                          ),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black54,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

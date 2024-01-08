import 'package:classico/Widgets/Home%20page/home_catalog_image.dart';
import 'package:classico/models/catalog.dart';
import 'package:classico/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.w),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: context.cardColor,
            borderRadius: BorderRadius.circular(12.r)),
        height: 120.h,
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                imageUrl: catalog.image,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 13.sp),
                  ),
                  Text(
                    catalog.desc,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                  ),
                  CustomBottomBar(catalog: catalog)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    required this.catalog,
  });

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "₹ " + catalog.price.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
        )
      ],
    );
  }
}

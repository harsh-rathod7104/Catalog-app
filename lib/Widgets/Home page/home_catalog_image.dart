import 'package:classico/Widgets/thems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogImage extends StatelessWidget {
  final String imageUrl;
  const CatalogImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
        color: MyTheme.creamColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      width: MediaQuery.of(context).size.width * 0.2.w,
      padding: EdgeInsets.all(8.r),
      child: Image.network(
        imageUrl,
      ),
    );
  }
}

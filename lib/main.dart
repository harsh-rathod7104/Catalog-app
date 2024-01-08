import 'package:classico/models/catalog.dart';
import 'package:classico/pages/HomePage.dart';
import 'package:classico/pages/cart_page.dart';
import 'package:classico/pages/login_page.dart';
import 'package:classico/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//Material
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // home: LoginPage(),
          theme: ThemeData(
            useMaterial3: false,
            fontFamily: GoogleFonts.lato().fontFamily,
            primarySwatch: Colors.orange,
          ),
          routes: {
            "/": (context) => HomePage(),
            MyRoutes.homeRoute: (context) => HomePage(),
            MyRoutes.loginRoute: (context) => const LoginPage(),
            MyRoutes.cartRoute: (context) => const CartPage(),
          },
        );
      },
    );
  }
}

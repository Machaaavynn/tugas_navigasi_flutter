import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi_buttom/bindings/bindings.dart';
import 'package:navigasi_buttom/splashscreen.dart';
import 'package:navigasi_buttom/widgets/login_page.dart';
import 'package:navigasi_buttom/widgets/dhasboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => SplashScreen(imagePath: 'assets/logoapp.png'), 
        ),
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => DashboardPage(),
          binding: MyBindings(),
        ),
      ],
    );
  }
}

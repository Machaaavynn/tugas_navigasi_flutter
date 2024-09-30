import 'package:navigasi_buttom/bindings/bindings.dart';
import 'package:navigasi_buttom/widgets/login_page.dart';
import 'package:navigasi_buttom/widgets/dhasboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
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

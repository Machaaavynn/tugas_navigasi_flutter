import 'package:navigasi_buttom/controller/buttom_nav_controller.dart';
import 'package:navigasi_buttom/menu/category.dart';
import 'package:navigasi_buttom/menu/home.dart';
import 'package:navigasi_buttom/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DhasboardController dashboardController = Get.find();
    final List<Widget> menus = [
      MyHomePage(),
      Category(),
      Profile(),
    ];

    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.black,
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          currentIndex: dashboardController.selectedIndex.value,
          onTap: (index) {
            dashboardController.selectedIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category, color: Colors.white),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.white),
              label: "Profile",
            ),
          ],
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
        ),
      );
    });
  }
}

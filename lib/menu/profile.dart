// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi_buttom/model/model_profile.dart';
import 'package:navigasi_buttom/widgets/login_page.dart';
import 'package:navigasi_buttom/widgets/profile/custom_button.dart';
import 'package:navigasi_buttom/widgets/profile/custom_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  final ProfileModel profile = ProfileModel(
    name: 'Brillian Suhargo',
    role: 'Pemprograman IT',
    imagePath: 'assets/brill.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: SizedBox.shrink(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomCard(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(profile.imagePath),
                ),
                SizedBox(height: 16),
                Text(
                  profile.name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  profile.role,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(
                  text: 'Logout',
                  color: Colors.black,
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setBool('isLoggedIn', false);
                    Get.snackbar('Logout', 'Anda telah logout.',
                        backgroundColor: Colors.orange,
                        colorText: Colors.white);
                    Get.offAll(LoginPage());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

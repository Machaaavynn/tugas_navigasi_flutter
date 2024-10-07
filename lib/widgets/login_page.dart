// login_page.dart
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi_buttom/widgets/mytext_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? loggedIn = prefs.getBool('isLoggedIn') ?? false;
    if (loggedIn) {
      Get.toNamed('/dashboard');
    }
  }

  void login() async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Gagal Login', 'Mohon isi semua field.',
          backgroundColor: Colors.red, colorText: Colors.white);
    } else if (username == 'admin' && password == 'admin') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      Get.snackbar('Login Sukses', 'Selamat datang!',
          backgroundColor: Colors.green, colorText: Colors.white);
      Get.toNamed('/dashboard');
    } else {
      Get.snackbar('Gagal Login', 'Username atau Password salah.',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(
                controller: usernameController,
                label: 'Username',
              ),
              SizedBox(height: 15),
              MyTextField(
                controller: passwordController,
                label: 'Password',
                isPassword: true,
                isPasswordVisible: isPasswordVisible,
                onSuffixIconPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: login,
                child: Text('Log in', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey[700]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No account?',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'loginpage.dart';
import 'deletepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delete Account Example',
      initialRoute: '/login', // Start with the login page
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(
          name: '/delete_account',
          page: () => DeleteAccountPage(phone: Get.arguments as String),
        ),
      ],
    );
  }
}

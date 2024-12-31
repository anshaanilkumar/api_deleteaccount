import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'loginctrlr.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  TextEditingController namectrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 350),
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 10),
                child: Text('Welcome Back!'),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Login to explore authentic ayurvedic medicines,'),
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('herbal remedies,and personalized wellness'),
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Solutions for a healthier, balanced life.'),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: namectrlr,
                    decoration: InputDecoration(
                      hintText: 'Shopname',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.maps_home_work_sharp),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: loginController.phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color.fromARGB(255, 68, 174, 249),
                  ),
                  onPressed: () {
                    loginController.login();
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

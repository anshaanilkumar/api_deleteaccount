import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'deletecontroller.dart';

class DeleteAccountPage extends StatelessWidget {
  final DeleteAccountController deleteController = Get.put(DeleteAccountController());
  final String phone;

  DeleteAccountPage({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Phone passed to DeleteAccountPage: $phone'); // Debugging

    return Scaffold(
      appBar: AppBar(title: Text('Delete Account')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you sure you want to delete your account?',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Obx(() => deleteController.isDeleting.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                onPressed: () => deleteController.deleteAccount(phone),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: Text(
                  'DELETE ACCOUNT',
                  style: TextStyle(color: Colors.white),
                ),
              )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                child: Text('CANCEL'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

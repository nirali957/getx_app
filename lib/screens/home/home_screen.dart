import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/login/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home screen"),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.black26,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(const LoginScreen());
                Get.to(() => const LoginScreen());
              },
              child: const Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}

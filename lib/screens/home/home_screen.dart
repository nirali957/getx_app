import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/home/home_controller.dart';
import 'package:getx_app/screens/login/login_screen.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(
                  "Counter is: --> ${controller.counter.value}",
                  style: const TextStyle(fontSize: 25),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: const Icon(Icons.email),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'Add',
              onPressed: () {
                controller.counterAdd();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              heroTag: 'Remove',
              onPressed: () {
                controller.counterMinus();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

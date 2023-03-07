import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final emailController = Get.put(EmailController());
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login Screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 3,
                      style: BorderStyle.solid,
                      strokeAlign: StrokeAlign.inside,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 3,
                      style: BorderStyle.solid,
                      strokeAlign: StrokeAlign.inside,
                    ),
                  ),
                ),
                onChanged: (value) => emailController.email.value = value,
                validator: emailController.validateEmail,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (Get.isSnackbarOpen == true) {
                    Get.back();
                  }
                  if (GetUtils.isEmail(emailController.email.value)) {
                    Get.snackbar(
                      'Success',
                      'Email is Valid',
                      backgroundColor: Colors.greenAccent,
                      colorText: Colors.black,
                      boxShadows: [
                        const BoxShadow(
                          color: Colors.blue,
                        ),
                      ],
                    );
                  } else {
                    Get.snackbar(
                      "Error",
                      "Email is invalid",
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                      duration: const Duration(seconds: 3),
                    );
                  }
                },
                child: const Text("Submit",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

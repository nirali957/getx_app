import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  hintText: 'Email',
                  fillColor: Colors.amber,
                ),
                cursorColor: Colors.deepPurpleAccent,
                cursorWidth: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

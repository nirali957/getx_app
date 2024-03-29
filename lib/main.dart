import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/utils/routes/routes.dart';
import 'package:getx_app/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: routesList,
      initialRoute: RoutesName.homeScreen,
      // initialRoute: RoutesName.loginScreen,
    );
  }
}

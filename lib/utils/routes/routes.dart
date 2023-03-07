import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_app/screens/home/home_binding.dart';
import 'package:getx_app/screens/home/home_screen.dart';
import 'package:getx_app/screens/login/login_binding.dart';
import 'package:getx_app/screens/login/login_screen.dart';
import 'package:getx_app/utils/routes/routes_name.dart';

List<GetPage<dynamic>> routesList = [
  GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
  GetPage(name: RoutesName.loginScreen, page: () => LoginScreen(), binding: LoginBinding()),
];

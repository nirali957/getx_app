import 'package:get/get.dart';

class EmailController extends GetxController {
  var email = ''.obs;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
}

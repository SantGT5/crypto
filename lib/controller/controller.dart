import 'package:get/get.dart';

class Controller extends GetxController {
  RxString passBool = "true".obs;
  RxString email = "".obs;

  void pass() {
    passBool.value == "true"
        ? passBool.value = "false"
        : passBool.value = "true";
  }

  void inputEmail(String content) {
    email.value = content;
  }
}

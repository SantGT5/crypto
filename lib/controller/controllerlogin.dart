import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ControllerLogin extends GetxController {
  RxString email = "".obs;
  RxString passTxt = "".obs;
  RxString passIcon = "true".obs;

  void emailVoid(String content) {
    email.value = content;
  }

  void passIconVoid() {
    passIcon.value == "true"
        ? passIcon.value = "false"
        : passIcon.value = "true";
  }

  void passTxtVoid(String content) {
    passTxt.value = content;
  }
}

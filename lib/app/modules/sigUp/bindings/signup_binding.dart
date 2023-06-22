import 'package:flash_chat/app/modules/sigUp/controllers/sign_up_controller.dart';
import 'package:get/get.dart';

// import '../controllers/signin_controller.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}

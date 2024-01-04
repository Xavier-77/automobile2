import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../Controllers/LoginController.dart';
import '../Controllers/RegisterControllers.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<RegisterController>(() => RegisterController(),
    );

  }
}
class LoginBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<LoginController>(() => LoginController()
    );
  }
}
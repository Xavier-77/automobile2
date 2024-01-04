import 'package:automobile/courses.dart';
import 'package:automobile/welcome.dart';
import 'package:get/get.dart';

import '../Bindings/binding.dart';
import '../Views/LoginView.dart';
import '../Views/RegisterView.dart';
import '../Views/index.dart';
import 'app_routes.dart';

class AppPages{
  static const INITIAL = AppRoutes.index;
  static final routes = [
    GetPage(name: AppRoutes.Register, page: () =>RegisterView(),
    binding: RegisterBinding(),),
    GetPage(name: AppRoutes.Login, page: () =>LoginView(),
      binding: LoginBinding(),),
    GetPage(name: AppRoutes.index, page: () =>IndexView(),
      binding: LoginBinding(),),
    GetPage(name: AppRoutes.welcome, page: () =>WelcomePage(),
      binding: LoginBinding(),),
    GetPage(name: AppRoutes.courses, page: () =>ApprentissagePage(),
        binding: LoginBinding(),),
  ];
}
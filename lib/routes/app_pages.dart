import 'package:flash_chat/modules/landing/view/landing_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITTAL = Routes.LANDING;
  static final routes = [
    GetPage(
      name: _Paths.LANDING, page: () => const LandingView(),
      // binding: LandingB(),
    ),
  ];
}

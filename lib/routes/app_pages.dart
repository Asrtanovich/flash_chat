import 'package:flash_chat/app/modules/chat/bindings/chat_binding.dart';
import 'package:flash_chat/app/modules/chat/view/chat_view.dart';
import 'package:flash_chat/app/modules/home/bindings/home_binding.dart';
import 'package:flash_chat/app/modules/home/view/home_view.dart';
import 'package:flash_chat/app/modules/landing/bindings/landin_binding.dart';
import 'package:flash_chat/app/modules/sigUp/views/sign_up_view.dart';
import 'package:flash_chat/app/modules/signin/bindings/signin_binding.dart';
import 'package:flash_chat/app/modules/signin/views/signin_view.dart';
import 'package:get/get.dart';

import '../app/modules/landing/view/landing_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
  ];
}

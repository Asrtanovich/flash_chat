import 'package:flash_chat/app/constans/app_strings/app_strings.dart';
import 'package:flash_chat/app/constans/app_text_style.dart/app_text_syle.dart';
import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/modules/sigUp/controllers/sign_up_controller.dart';
import 'package:flash_chat/modules/signin/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../app/widgets/text_fiallds/input_decoration_widget.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);
  final _controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  _controller.name.value = value;
                },
                decoration: registerDecoration.copyWith(
                  hintText: 'Name',
                  prefixIcon: const Icon(
                    Icons.person,
                  ),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {
                  _controller.email.value = value;
                },
                decoration: registerDecoration.copyWith(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {
                  _controller.password.value = value;
                },
                decoration: registerDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.key,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Already have an account?',
                    style: AppTextStyle.black16Bold,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () => Get.to(SigninView()),
                    child: const Text(
                      AppStrings.signIn,
                      style: AppTextStyle.black16Bold,
                    ),
                  )
                ],
              ),
              sizedBox,
              RegisterWidget(
                  text: AppStrings.signUp,
                  onTap: () {
                    _controller.signUp();
                  })
            ],
          ),
        ),
      ),
    );
  }
}

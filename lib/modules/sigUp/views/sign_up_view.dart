import 'package:flash_chat/modules/sigUp/controllers/sign_up_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../app/widgets/buttons/register_widget.dart';
import '../../../app/widgets/text_fiallds/input_decoration_widget.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

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
                  controller.name.value = value;
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
                  controller.email.value = value;
                },
                decoration: registerDecoration.copyWith(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {
                  controller.password.value = value;
                },
                decoration: registerDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.key,
                  ),
                ),
              ),
              sizedBox,
              RegisterWidget(
                text: 'Sign Up',
                onTap: () {
                  controller.signUp();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

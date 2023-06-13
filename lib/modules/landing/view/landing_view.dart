import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/modules/sigUp/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../signin/views/signin_view.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterWidget(
                  text: 'Sign In',
                  onTap: () {
                    Get.to(SigninView());
                  }),
              sizedBox,
              RegisterWidget(
                  text: 'Sign Up',
                  onTap: () {
                    Get.to(SignUpView());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

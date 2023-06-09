import 'package:flash_chat/app/constans/app_strings/app_strings.dart';
import 'package:flash_chat/app/constans/app_text_style.dart/app_text_syle.dart';
import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/app/widgets/text_fiallds/input_decoration_widget.dart';
import 'package:flash_chat/app/modules/sigUp/views/sign_up_view.dart';

// import 'package:flash_chat_kurs12/app/modules/signUp/views/sign_up_view.dart';
// import 'package:flash_chat_kurs12/app/widgets/buttons/register_widget.dart';
// import 'package:flash_chat_kurs12/app/widgets/text_fiallds/input_decoration_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SigninView extends StatelessWidget {
  SigninView({Key? key}) : super(key: key);
  final _controller = Get.put<SigninController>(SigninController());
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
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                sizedBox,
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'DoN\`t have an account?',
                        style: AppTextStyle.black16Bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Color.fromARGB(141, 31, 112, 177),
                      height: 20,
                      width: 60,
                      child: InkWell(
                        onTap: () => Get.to(SignUpView()),
                        child: const Center(
                          child: Text(
                            AppStrings.signUp,
                            style: AppTextStyle.black16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                sizedBox,
                RegisterWidget(
                    text: AppStrings.signIn,
                    onTap: () {
                      _controller.signIn();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/app/widgets/text_fiallds/input_decoration_widget.dart';
import 'package:flutter/material.dart';

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
              TextField(
                onChanged: (value) {},
                decoration: registerDecoration.copyWith(
                  hintText: 'Name',
                  prefixIcon: const Icon(
                    Icons.person,
                  ),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {},
                decoration: registerDecoration.copyWith(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {},
                decoration: registerDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.key,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

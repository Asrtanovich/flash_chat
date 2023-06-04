import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          TextField(),
          Text(
            'LandingView is working',
            style: TextStyle(fontSize: 20),
          )
        ]),
      ),
    );
  }
}

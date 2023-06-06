import 'package:flutter/material.dart';

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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail_outline),
                ),
              ),
              Text(
                'LandingView is working',
                style: TextStyle(fontSize: 20),
              )
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
            onTap: () => Get.toNamed("/signup"),
            child: Center(
              child: Text(
                "sign up",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            )),
      ),
    );
  }
}

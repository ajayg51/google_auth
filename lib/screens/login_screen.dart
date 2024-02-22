
import 'package:common_layout_setup_kit/utils/common_scaffold.dart';
import 'package:common_layout_setup_kit/utils/common_appbar.dart';
import 'package:common_layout_setup_kit/utils/extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CommonScaffold(
          gradientColorList: const [
            Colors.blue,
            Colors.purple,
          ],
          child: Center(
            child: Obx(() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("User : " + controller.error.value),
                  10.verticalSpace,
                  if (controller.isLoading.value)
                    const CircularProgressIndicator(),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libararybd/common/botton.dart';
import 'package:libararybd/common/custom_textfild.dart';
import 'package:libararybd/feature/auth/view/sign_up_screen.dart';
import 'package:libararybd/core/util/custom_color.dart';
import 'package:libararybd/core/util/dimensions.dart';
import 'package:libararybd/core/util/styles.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.fifTeen),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text("Welcome Back", style: textBold),
              const SizedBox(height: Dimensions.twenty),
              const Text("Gmail", style: textMedium),
              const SizedBox(height: 8),
              const CustomTextField(
                priFixIcon: Icon(Icons.email_outlined),
                hinText: "Enter your Gmail",
              ),
              const SizedBox(height: Dimensions.defaultSize),
              const Text("Password", style: textMedium),
              const SizedBox(height: 8),
              const CustomTextField(
                priFixIcon: Icon(Icons.lock_outline),
                hinText: "Enter your password",
                obscureText: true,
              ),
              const SizedBox(height: Dimensions.twenty),
              const CustomBottom(
                name: "Login",
                bottomColor: appColor,
              ),
              const SizedBox(height: Dimensions.twenty),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ", style: textRegular),
                  InkWell(
                    onTap: () {
                      Get.to(() => const SignUpScreenView());
                    },
                    child: Text(
                      "Sign up",
                      style: textRegular.copyWith(
                        color: appColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

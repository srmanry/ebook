import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libararybd/common/botton.dart';
import 'package:libararybd/common/custom_textfild.dart';
import 'package:libararybd/core/util/custom_color.dart';
import 'package:libararybd/core/util/dimensions.dart';
import 'package:libararybd/core/util/styles.dart';

import '../../appground/view/dashobord_screen.dart';
import 'login_screen_veiw.dart';

enum UserRole { author, reader }

class SignUpScreenView extends StatefulWidget {
  const SignUpScreenView({super.key});

  @override
  State<SignUpScreenView> createState() => _SignUpScreenViewState();
}

class _SignUpScreenViewState extends State<SignUpScreenView> {
  UserRole? _selectedRole;

  void _onSignUpTap() {
    if (_selectedRole == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please select Author or Reader")),
      );
      return;
    }

    // TODO: Connect real signup API/Firebase here with selected role.
    Get.to(() => AppGroundScreenView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.fifTeen),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Join E Book Library", style: textBold),
              const Text("Read and Books"),
              const SizedBox(height: Dimensions.twenty),
              const Text("Email", style: textMedium),
              const CustomTextField(
                priFixIcon: Icon(Icons.email_outlined),
                hinText: "Email",
              ),
              const SizedBox(height: Dimensions.defaultSize),
              const Text("Password", style: textMedium),
              const CustomTextField(
                priFixIcon: Icon(Icons.lock),
                hinText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: Dimensions.defaultSize),
              const Text("Select Role", style: textMedium),
              const SizedBox(height: 8),
              DropdownButtonFormField<UserRole>(
                initialValue: _selectedRole,
                decoration: InputDecoration(
                  hintText: "Select your role",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                ),
                items: const [
                  DropdownMenuItem(
                    value: UserRole.author,
                    child: Text("Author"),
                  ),
                  DropdownMenuItem(
                    value: UserRole.reader,
                    child: Text("Reader"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedRole = value;
                  });
                },
              ),
              const SizedBox(height: Dimensions.defaultSize),
              Row(
                children: [
                  const Icon(Icons.check_box),
                  const SizedBox(width: Dimensions.defaultSize),
                  const Text("I agree to E Library"),
                  Text(
                    " Terms & conditions",
                    style: textRegular.copyWith(color: appColor),
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.twenty),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Dimensions.twenty),
                child: CustomBottom(
                  name: "Sign up",
                  bottomColor: appColor,
                  onTap: _onSignUpTap,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    InkWell(
                        onTap: () {
                          Get.to(() => LoginScreenView());
                        },
                        child: Text(" Sign in", style: textRegular.copyWith(color: appColor))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

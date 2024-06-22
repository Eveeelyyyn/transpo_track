import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transpo_track/common/styles/spacing_styles.dart';
import 'package:transpo_track/common/widgets/login_signup/form_divider.dart';
import 'package:transpo_track/common/widgets/login_signup/social_buttons.dart';
import 'package:transpo_track/features/authentication/screens/login/widgets/login_form.dart';
import 'package:transpo_track/features/authentication/screens/login/widgets/login_header.dart';
import 'package:transpo_track/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingLeftAppbarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              const TloginHeader(),

              // Form
              const TLoginForm(),

              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

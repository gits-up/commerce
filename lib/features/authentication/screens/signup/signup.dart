import 'package:commerce/common/widgets/login_signup/form_divider.dart';
import 'package:commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:commerce/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(STexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: SSizes.spaceBtwSelections),
              //Form
              const SSignupForm(),
              const SizedBox(height: SSizes.spaceBtwSelections),

              //Divider
              SFormDivider(dividerText: STexts.orSignUpWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSelections),

              //Social buttons
              const SSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}


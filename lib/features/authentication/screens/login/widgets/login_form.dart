import 'package:commerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SSizes.spaceBtwSelections),
          child: Column(
            children: [
              //Email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: STexts.email,
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields),
              //Password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: STexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields / 2),

              //Remember me and forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(STexts.rememberMe),
                    ],
                  ),
                  //Forget password
                  TextButton(
                    onPressed: () {},
                    child: const Text(STexts.forgetPassword),
                  )
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwSelections),

              //Sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(STexts.signIn))),
              const SizedBox(height: SSizes.spaceBtwItems),

              //Create account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignupScreen()),
                      child: const Text(STexts.createAccount))),
            ],
          ),
        ));
  }
}

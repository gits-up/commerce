import 'package:commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: STexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: STexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: STexts.userName,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //email
          TextFormField(
            decoration: const InputDecoration(
                labelText: STexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //phone number
          TextFormField(
            decoration: const InputDecoration(
                labelText: STexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: STexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwSelections),

          //terms and conditions
          const STermsAndConditionsCheckbox(),
          const SizedBox(height: SSizes.spaceBtwSelections),

          //sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(STexts.createAccount)),
          ),
        ],
      ),
    );
  }
}

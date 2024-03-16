import 'package:commerce/common/styles/spacing_styles.dart';
import 'package:commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:commerce/utils/constants/colors.dart';
import 'package:commerce/utils/constants/image_strings.dart';
import 'package:commerce/utils/constants/sizes.dart';
import 'package:commerce/utils/constants/text_strings.dart';
import 'package:commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo,title and subtitle
              const SLoginHeader(),

              //Form
              const SLoginForm(),
              //Divider
              SFormDivider(dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSelections),
              //Footer
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}





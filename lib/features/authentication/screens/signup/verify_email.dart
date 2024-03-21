import 'package:commerce/app.dart';
import 'package:commerce/common/widgets/success_screen/success_screen.dart';
import 'package:commerce/features/authentication/screens/login/login.dart';
import 'package:commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding to give default equal space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                  image: const AssetImage(SImages.deliveredEmailIllustration),
                  width: SHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: SSizes.spaceBtwSelections),
              //title and subtitle
              Text(STexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text('gitsup155@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text(STexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              //buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(
                            () => SuccessScreen(
                              image: SImages.staticSuccessIllustration,
                              title: STexts.yourAccountCreatedTitle,
                              subTitle: STexts.yourAccountCreatedSubTitle,
                              onPressed: () =>
                                  Get.to(() => const LoginScreen()),
                            ),
                          ),
                      child: const Text(STexts.sContinue))),
              const SizedBox(height: SSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(STexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}

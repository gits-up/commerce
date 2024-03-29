import 'package:commerce/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                  image: const AssetImage(SImages.deliveredEmailIllustration),
                  width: SHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: SSizes.spaceBtwSelections),
              //title and subtitle
              Text(STexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text(STexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              //buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: const Text(STexts.done))),
              const SizedBox(height: SSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: (){},
                      child: const Text(STexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}

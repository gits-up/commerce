import 'package:commerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:commerce/utils/constants/image_strings.dart';
import 'package:commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          const OnBoardingSkip(),

          //Dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          
          //Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}





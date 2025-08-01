import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/animations/fade_in_animation/animation_design.dart';
import '../../../../../utils/animations/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../../utils/animations/fade_in_animation/fade_in_animation_model.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            FadeInAnimation(
              durationInMs: 1200,
              animate: AnimatePosition(
                topAfter: 0,
                topBefore: -30,
                leftBefore: -30,
                leftAfter: 0,
              ),
              child: const Image(image: AssetImage(TImages.tSplashTopIcon)),
            ),
            FadeInAnimation(
              durationInMs: 1600,
              animate: AnimatePosition(
                topBefore: 100,
                topAfter: 100,
                leftAfter: TSizes.defaultSpace,
                leftBefore: -100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CommonTexts.tAppName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    CommonTexts.tAppTagLine,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
            FadeInAnimation(
              durationInMs: 2000,
              animate: AnimatePosition(bottomBefore: 0, bottomAfter: 100),
              child: const Image(image: AssetImage(TImages.tSplashImage)),
            ),
            FadeInAnimation(
              durationInMs: 2000,
              animate: AnimatePosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightBefore: TSizes.defaultSpace,
                rightAfter: TSizes.defaultSpace,
              ),
              child: Container(
                width: TSizes.xl,
                height: TSizes.xl,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: CommonColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

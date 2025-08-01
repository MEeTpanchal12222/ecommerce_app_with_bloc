import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../controllers/phone_number_controller.dart';
import 'widget/phone_number_field.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    final controller = Get.put(SignInController());

    return Scaffold(
      backgroundColor: dark ? CommonColors.dark : CommonColors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            top: TSizes.defaultSpace * 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -- Display the OTP image
              Lottie.asset(
                TImages.signInAnimation,
                width: HelperFunctions.screenWidth() * 0.875,
                height: HelperFunctions.screenHeight() * 0.4,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Title
              Center(
                child: Text(
                  CommonTexts.otpVerification,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Subtitle
              Center(
                child: Text(
                  CommonTexts.signInSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Phone number Field
              const TPhoneNumberField(),

              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(CommonTexts.tContinue.tr),
                  onPressed: () => controller.loginWithPhoneNumber(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

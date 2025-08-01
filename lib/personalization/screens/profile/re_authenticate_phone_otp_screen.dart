import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../features/authentication/controllers/otp_controller.dart';

class ReAuthenticatePhoneOtpScreen extends StatelessWidget {
  const ReAuthenticatePhoneOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OTPController.instance;
    controller.init();
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? CommonColors.dark : CommonColors.white,
      body: Container(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              CommonTexts.tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(
              CommonTexts.tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 40.0),
            const Text(CommonTexts.tOtpMessage, textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withValues(alpha: 0.1),
              filled: true,
              onSubmit: (code) {
                controller.otp = code;
                OTPController.instance.verifyOTP();
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                    controller.loader.value
                        ? () {}
                        : () => controller.verifyOTP(),
                child: const Text(CommonTexts.tNext),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Obx(
                () => RichText(
                  text: TextSpan(
                    text: CommonTexts.thenLets,
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                        text: CommonTexts.resendOTP,
                        recognizer:
                            (controller.secondsRemaining.value > 0)
                                  ? null
                                  : TapGestureRecognizer()
                              ?..onTap = () => controller.resendOTP(),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color:
                              (controller.secondsRemaining.value > 0)
                                  ? CommonColors.darkGrey
                                  : CommonColors.primary,
                        ),
                      ),
                      if (controller.secondsRemaining.value > 0)
                        TextSpan(
                          text:
                              " ${CommonTexts.inText} ${controller.secondsRemaining.value}",
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(color: CommonColors.darkGrey),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

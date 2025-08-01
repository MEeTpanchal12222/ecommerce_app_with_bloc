import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/validators/validation.dart';
import '../../../controllers/phone_number_controller.dart';

class TPhoneNumberField extends StatelessWidget {
  const TPhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final controller = Get.put(SignInController());
    return Form(
      key: controller.signInFormKey,
      child: TextFormField(
        cursorColor: CommonColors.primary,
        cursorHeight: TSizes.lg,
        style: Theme.of(context).textTheme.bodySmall,
        validator: (value) => Validator.validatePhoneNumber(value),
        controller: controller.phone,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          fillColor: isDark ? CommonColors.dark : CommonColors.white,
          prefixIcon: CountryCodePicker(
            alignLeft: false,
            hideMainText: true,
            showCountryOnly: false,
            padding: EdgeInsets.zero,
            showDropDownButton: true,
            initialSelection: 'GB',
            showOnlyCountryWhenClosed: false,
            headerText: CommonTexts.selectCountry,
            favorite: const ['GB', '+92'],
            onChanged:
                (value) =>
                    controller.selectedCountryCode.value = value.dialCode!,
            searchDecoration: InputDecoration(
              fillColor:
                  isDark
                      ? CommonColors.darkContainer
                      : CommonColors.lightContainer,
            ),
            dialogBackgroundColor:
                isDark ? CommonColors.dark : CommonColors.white,
          ),
          hintText: CommonTexts.phoneNo,
          errorStyle: const TextStyle(color: CommonColors.error),
        ),
      ),
    );
  }
}

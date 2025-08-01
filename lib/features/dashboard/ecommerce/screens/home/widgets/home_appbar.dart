import 'package:ecommerce_app/common/widgets/appbar/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../personalization/screens/profile/profile_screen.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../cart/screens/cart_menu_icon.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TEComAppBar(
      title: GestureDetector(
        onTap: () => Get.to(() => const ProfileScreen()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CommonTexts.homeAppbarTitle,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: CommonColors.grey),
            ),
            Text(
              CommonTexts.homeAppbarSubTitle,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall!.apply(color: CommonColors.white),
            ),
          ],
        ),
      ),
      actions: const [
        TCartCounterIcon(
          iconColor: CommonColors.white,
          counterBgColor: CommonColors.black,
          counterTextColor: CommonColors.white,
        ),
      ],
    );
  }
}

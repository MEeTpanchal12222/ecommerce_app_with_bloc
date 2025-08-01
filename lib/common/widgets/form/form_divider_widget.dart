import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class TFormDividerWidget extends StatelessWidget {
  const TFormDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            thickness: 1,
            indent: 50,
            color: Colors.grey.withValues(alpha: 0.3),
            endIndent: 10,
          ),
        ),
        Text(
          CommonTexts.tOR,
          style: Theme.of(context).textTheme.bodyLarge!.apply(
            color:
                dark
                    ? CommonColors.white.withValues(alpha: 0.5)
                    : CommonColors.dark.withValues(alpha: 0.5),
          ),
        ),
        Flexible(
          child: Divider(
            thickness: 1,
            indent: 10,
            color: Colors.grey.withValues(alpha: 0.3),
            endIndent: 50,
          ),
        ),
      ],
    );
  }
}

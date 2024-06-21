import 'package:flutter/material.dart';
import 'package:transpo_track/utils/constants/image_strings.dart';
import 'package:transpo_track/utils/constants/sizes.dart';
import 'package:transpo_track/utils/constants/text_strings.dart';
import 'package:transpo_track/utils/helpers/helper_functions.dart';


class TloginHeader extends StatelessWidget {
  const TloginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo: TImages.darkAppLogo),
        ),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium)
        
      ],
    );
  }
}
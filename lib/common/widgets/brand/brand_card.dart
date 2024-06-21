import 'package:flutter/material.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:transpo_track/common/widgets/images/t_circular_images.dart';
import 'package:transpo_track/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:transpo_track/utils/constants/colors.dart';
import 'package:transpo_track/utils/constants/enums.dart';
import 'package:transpo_track/utils/constants/image_strings.dart';
import 'package:transpo_track/utils/constants/sizes.dart';
import 'package:transpo_track/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder, 
    required this.title, required this.subtitle,
  });

  final String title, subtitle;
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
    onTap: onTap,
    child: TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.sm),
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          // -- Icon
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.piloto,
              backgroundColor: Colors.transparent,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
          ),
          
          const SizedBox(width:TSizes.spaceBetweenItems / 2),
    
          /// -- Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TBrandTitleWithVerifiedIcon(title: title, brandTextSize: TextSizes.large),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],),
          )
          
        ]
      ),
    ),
    );
  }
}
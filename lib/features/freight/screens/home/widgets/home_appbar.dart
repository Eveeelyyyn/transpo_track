import 'package:flutter/material.dart';
import 'package:transpo_track/common/widgets/appbar/appbar.dart';
import 'package:transpo_track/common/widgets/features/cart/cart_menu_icon.dart';
import 'package:transpo_track/utils/constants/colors.dart';
import 'package:transpo_track/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(title: Column(
      children: [
        //Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color:TColors.grey)),
        Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineMedium!.apply(color:TColors.white)),
      ],
    ),
    actions: [
      TCartCounterIcon(onPressed: () {  }, iconColor: TColors.white)
    ],
    );
  }
}
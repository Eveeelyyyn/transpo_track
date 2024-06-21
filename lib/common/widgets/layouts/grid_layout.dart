import 'package:flutter/material.dart';
import 'package:transpo_track/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.axisCount = 2,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final int axisCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: axisCount,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
      ), 
      itemBuilder: itemBuilder,
    ); 
  }
}

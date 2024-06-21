import 'package:flutter/material.dart';
import 'package:transpo_track/common/widgets/texts/seaction_heading.dart';
import 'package:transpo_track/features/freight/screens/home/widgets/order_list.dart';
import 'package:transpo_track/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            //const TBrandShowcase(images: [TImages.carro1, TImages.carro1, TImages.carro1]),
            //const SizedBox(height: TSizes.spaceBetweenItems),
      
            /// -- Products
            TSectionHeading(title: 'Estado de los fletes', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBetweenItems),
            
            //TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
            //const SizedBox(height: TSizes.spaceBetweenSections),

            TOrderListItems(estado: title, color: color),
            const SizedBox(height: TSizes.spaceBetweenItems),
            TOrderListItems(estado: title, color: color),
            const SizedBox(height: TSizes.spaceBetweenItems),
            TOrderListItems(estado: title, color: color),
            const SizedBox(height: TSizes.spaceBetweenItems),
            TOrderListItems(estado: title, color: color),
            const SizedBox(height: TSizes.spaceBetweenItems),
            TOrderListItems(estado: title, color: color),
            const SizedBox(height: TSizes.spaceBetweenItems),
          ],
        ),
      ),
      ],
    );
  }
}

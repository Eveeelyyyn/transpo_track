import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:transpo_track/utils/constants/colors.dart';
import 'package:transpo_track/utils/constants/sizes.dart';
import 'package:transpo_track/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget{
  const TOrderListItems({super.key, this.estado = 'En ruta', this.color =  TColors.primary});


  final String estado;
  final Color color;

  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
  return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: dark ? TColors.dark : TColors.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              // 1 - Icon
              const Icon(Iconsax.truck_fast),
              const SizedBox(width: TSizes.spaceBetweenItems / 2),
    
              // 2 - Status & Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      estado,
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: color, fontWeightDelta: 1),
                    ),
                    Text(
                      '07 Nov 2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              
              // 3 - Icon
              IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm)),
            ],
          ),
          const SizedBox(height: TSizes.spaceBetweenItems,),
    
          /// -- Row 2
    
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // 1 - Icon
                    const Icon(Iconsax.document),
                    const SizedBox(width: TSizes.spaceBetweenItems / 2),
                
                    // 2 - Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Folio',style: Theme.of(context).textTheme.labelMedium),
                          Text('[2344543]', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
    
              Expanded(
                child: Row(
                  children: [
                    // 1 - Icon
                    const Icon(Iconsax.box),
                    const SizedBox(width: TSizes.spaceBetweenItems / 2),
                
                    // 2 - Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Carga',style: Theme.of(context).textTheme.labelMedium),
                          Text('Pesada', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    
  );
}


}
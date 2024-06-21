import 'package:flutter/material.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:transpo_track/common/widgets/texts/seaction_heading.dart';
import 'package:transpo_track/features/freight/screens/home/widgets/home_appbar.dart';
import 'package:transpo_track/features/freight/screens/home/widgets/home_categories.dart';
import 'package:transpo_track/features/freight/screens/home/widgets/order_list.dart';
import 'package:transpo_track/features/freight/screens/home/widgets/promo_slider.dart';
import 'package:transpo_track/utils/constants/image_strings.dart';
import 'package:transpo_track/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar --
                  THomeAppBar(),
                  SizedBox(height: 10), 

                  /// -- SearchBar --
                  TSearchContainer(text: "Buscar flete"),
                  SizedBox(height: 24 ),

                  /// -- Catergories --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(title: 'Inventario', showActionButton: false, textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBetweenItems,),
                        
                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///Body 
            Padding(
              padding: const EdgeInsets.only(left: TSizes.defaultSpace, top: 12, right:  TSizes.defaultSpace ),
              child: Column(
                children: [
                    // -- Slider
                    const TPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3],),
                    const SizedBox(height: TSizes.spaceBetweenSections /2 ),
                    
                    // Heading
                    TSectionHeading(title: 'Fletes en progreso', onPressed: (){}),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    // -- Features
                    //const TProductCardVertical(),
                    const TOrderListItems(),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    const TOrderListItems(),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    const TOrderListItems(),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    const TOrderListItems(),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    const TOrderListItems(),
                    const SizedBox(height: TSizes.spaceBetweenItems),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


















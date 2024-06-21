import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transpo_track/common/widgets/appbar/appbar.dart';
import 'package:transpo_track/common/widgets/appbar/tabbar.dart';
import 'package:transpo_track/common/widgets/brand/brand_card.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:transpo_track/common/widgets/features/cart/cart_menu_icon.dart';
import 'package:transpo_track/common/widgets/texts/seaction_heading.dart';
import 'package:transpo_track/features/freight/screens/create_freight/widgets/category_tab.dart';
import 'package:transpo_track/utils/constants/colors.dart';
import 'package:transpo_track/utils/constants/sizes.dart';
import 'package:transpo_track/utils/helpers/helper_functions.dart';

class CreateFreight extends StatelessWidget {
  const CreateFreight({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('TransportTrack', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){}, iconColor: TColors.black,),
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black :  TColors.white, 
              expandedHeight: 440,
      
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(left: TSizes.defaultSpace, top: 8, right:  TSizes.defaultSpace ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// -- Search bar
                    const TSearchContainer(text: 'Buscar flete', showBorder: false, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBetweenSections / 2),
      
                    /// -- Featured Brands
                    TSectionHeading(title: 'Crear Nuevo', onPressed: (){},),
                    //const SizedBox(height: 2),

                    const TBrandCard(showBorder: false, title: 'Nueva Flotilla', subtitle: 'Crea un flotilla'),
                    const SizedBox(height: TSizes.spaceBetweenItems),

                    const TBrandCard(showBorder: false,  title: 'Nuevo Piloto', subtitle: 'Registra un conductor'),
                    const SizedBox(height: TSizes.spaceBetweenItems),

                    const TBrandCard(showBorder: false,  title: 'Nuevo vehículo', subtitle: 'Registra un transporte'),
                    const SizedBox(height: TSizes.spaceBetweenItems),
      
                    //TGridLayout(
                      //itemCount: 4, 
                      //mainAxisExtent: 80, 
                      //itemBuilder: (_, index) {
                      //return const TBrandCard(showBorder: false,);
                      //}
                    //)
                  ],
                )
              ),
      
              /// Tabs
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('En Progreso')),
                  Tab(child: Text('Terminados')),
                  Tab(child: Text('Cancelados')),
                ],
              ),
            ),
          ];
        }, 
        
        body: const TabBarView(
          children: [
            TCategoryTab(title: 'En ruta', color:  TColors.primary,),
            TCategoryTab(title: 'Terminado', color:  TColors.success,),
            TCategoryTab(title: 'Cancelado', color:  TColors.warning,),
          ],
        )
        ),
      ),
    );
  }
}


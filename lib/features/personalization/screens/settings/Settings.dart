import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transpo_track/common/widgets/appbar/appbar.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:transpo_track/common/widgets/texts/seaction_heading.dart';
import 'package:transpo_track/utils/constants/colors.dart';
import 'package:transpo_track/utils/constants/sizes.dart';

import '../../../../common/widgets/layouts/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/layouts/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              height: 200,
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Cuenta',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),

                  const TUserProfileTitle(),
                  const SizedBox(height: TSizes.spaceBetweenSections),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Configuración de Cuenta', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBetweenItems),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'Configuración 1', subTitle: 'Añadir detalle de la configuración', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.bank, title: 'Configuración 2', subTitle: 'Añadir detalle de la configuración', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.notification, title: 'Configuración 3', subTitle: 'Añadir detalle de la configuración', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.security_card, title: 'Configuración 4', subTitle: 'Añadir detalle de la configuración', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.bag, title: 'Configuración 5', subTitle: 'Añadir detalle de la configuración', onTap: (){},

                  ),
                  const SizedBox(height: TSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Cerrar sesión')),
                  ),
                  const SizedBox(height: TSizes.spaceBetweenSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



class TCircularImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final double padding;

  const TCircularImage({
    super.key,
    required this.image,
    this.width = 50.0,
    this.height = 50.0,
    this.padding = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: TColors.primary, // Puedes cambiar el color del borde aquí
          width: 2.0,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          image,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

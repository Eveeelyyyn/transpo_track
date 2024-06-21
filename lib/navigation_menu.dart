import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transpo_track/features/freight/screens/create_freight/create_freight.dart';
import 'package:transpo_track/features/freight/screens/home/home.dart';
import 'package:transpo_track/features/personalization/screens/settings/Settings.dart';
import 'package:transpo_track/utils/constants/colors.dart';
import 'package:transpo_track/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black: Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1): TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Inicio'),
            NavigationDestination(icon: Icon(Iconsax.car), label: 'Flete'),
            NavigationDestination(icon: Icon(Iconsax.receipt_edit), label: 'Reporte'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Perfil'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const CreateFreight(),
    Container(color: Colors.blue),
    const SettingsScreen(),
  ];
}

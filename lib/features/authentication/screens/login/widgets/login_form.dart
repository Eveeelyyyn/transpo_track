import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transpo_track/navigation_menu.dart';
import 'package:transpo_track/utils/constants/sizes.dart';
import 'package:transpo_track/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBetweenSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
          ),
          
          const SizedBox(height: TSizes.spaceBetweenInputFields),
      
          //Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check), 
              labelText: TTexts.password, 
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
      
          const SizedBox(height: TSizes.spaceBetweenInputFields / 2),
      
          /// Rememeber Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
      
              ///Forget Password
              TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword)),
            ],
          ),
      
          const SizedBox(height: TSizes.spaceBetweenItems),
      
          /// Sign In Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn))),
          
          const SizedBox(height: TSizes.spaceBetweenItems),
          /// Create Account Button
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text(TTexts.createAccount))),
    
          //const SizedBox(height: TSizes.spaceBetweenSections),
      
          ],
        ),
    ),
    );
  }
}

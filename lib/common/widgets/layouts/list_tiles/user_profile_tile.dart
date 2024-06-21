import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transpo_track/common/widgets/images/t_circular_images.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Nombre de Usuario', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.white)),
      subtitle: Text('correo@ejemplo.com', style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}

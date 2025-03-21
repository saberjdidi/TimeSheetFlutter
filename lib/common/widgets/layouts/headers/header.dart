
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/common/widgets/images/t_rounded_image.dart';
import 'package:timesheet_flutter/common/widgets/shimmers/shimmer.dart';
import 'package:timesheet_flutter/features/authentication/controllers/user_controller.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/constants/enums.dart';
import 'package:timesheet_flutter/utils/constants/image_strings.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/device/device_utility.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key, this.scaffoldKey});

  ///GlobalKey to access the Scaffold State
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {

    final controller = UserController.instance;

    return Container(
      decoration: const BoxDecoration(
        color: TColors.white,
        border: Border(bottom: BorderSide(color: TColors.grey, width: 1))
      ),
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(
        ///Mobile Menu
        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(onPressed: () => scaffoldKey?.currentState?.openDrawer(), icon: const Icon(Iconsax.menu))
            : null,

        ///Search Field
        title: TDeviceUtils.isDesktopScreen(context)
            ? SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.search_normal), hintText: 'Search Anything...'),
                ),
              )
            : null,

        ///Actions
        actions: [
          //Search Icon on Mobile
          if(!TDeviceUtils.isDesktopScreen(context)) IconButton(onPressed: (){}, icon: const Icon(Iconsax.search_normal)),

          //Notification Icon
          IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification)),
          const SizedBox(width: TSizes.spaceBtwItems / 2,),

          //User Data
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image
               Obx(() => TRoundedImage(
                 width: 40,
                 height: 40,
                 padding: 2,
                 imageType: controller.user.value.profilePicture.isNotEmpty ? ImageType.network : ImageType.asset,
                 image: controller.user.value.profilePicture.isNotEmpty ? controller.user.value.profilePicture : TImages.user,
               )),
              const SizedBox(width: TSizes.sm),

              //Name & Email
              if(!TDeviceUtils.isMobileScreen(context))
                Obx(() => Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    controller.loading.value
                        ? const TShimmerEffect(width: 50, height: 13)
                        : Text(controller.user.value.fullName, style: Theme.of(context).textTheme.titleLarge),
                    controller.loading.value
                        ? const TShimmerEffect(width: 50, height: 13)
                        : Text(controller.user.value.email ?? 'saberjdidi@gmail.com', style: Theme.of(context).textTheme.labelMedium),
                  ],
                ))
            ],
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}

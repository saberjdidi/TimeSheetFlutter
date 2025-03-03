
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/common/widgets/images/t_circular_image.dart';
import 'package:timesheet_flutter/common/widgets/layouts/sidebars/menu/menu_item.dart';
import 'package:timesheet_flutter/routes/routes.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/constants/image_strings.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: TColors.white,
          border: Border(right: BorderSide(color: TColors.grey, width: 1))
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TCircularImage(width: 100, height: 100, image: TImages.darkAppLogo, backgroundColor: Colors.transparent,),
              const SizedBox(height: TSizes.spaceBtwSections),
              Padding(
                  padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('MENU', style: Theme.of(context).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2)),

                    //Menu Items
                    const TMenuItem(route: TRoutes.dashboard, icon: Iconsax.status, itemName: 'Dashboard'),
                    const TMenuItem(route: TRoutes.media, icon: Iconsax.image, itemName: 'Media'),
                    const TMenuItem(route: TRoutes.categories, icon: Iconsax.category_2, itemName: 'Categories'),
                    const TMenuItem(route: TRoutes.brands, icon: Iconsax.dcube, itemName: 'Brands'),
                    const TMenuItem(route: TRoutes.banners, icon: Iconsax.picture_frame, itemName: 'Banners'),
                    const TMenuItem(route: TRoutes.products, icon: Iconsax.shopping_bag, itemName: 'Products'),
                    const TMenuItem(route: TRoutes.customers, icon: Iconsax.profile_2user, itemName: 'Customers'),
                    const TMenuItem(route: TRoutes.orders, icon: Iconsax.box, itemName: 'Orders'),

                    Text('MENU', style: Theme.of(context).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2)),
                    const TMenuItem(route: TRoutes.profile, icon: Iconsax.user, itemName: 'Profile'),
                    const TMenuItem(route: TRoutes.settings, icon: Iconsax.setting_2, itemName: 'Settings'),
                    const TMenuItem(route: 'logout', icon: Iconsax.logout, itemName: 'Logout'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



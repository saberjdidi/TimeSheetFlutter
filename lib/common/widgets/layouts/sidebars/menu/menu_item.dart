import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/common/widgets/layouts/sidebars/sidebar_controller.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class TMenuItem extends StatelessWidget {
  const TMenuItem({
    super.key, required this.route, required this.icon, required this.itemName,
  });

  final String route;
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());

    return InkWell(
      onTap: () => menuController.menuOnTap(route),
      onHover: (hovering) => hovering ? menuController.changeHoverItem(route) : menuController.changeHoverItem(''),
      child: Obx( () =>
          Padding(
            padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
            child: Container(
              decoration: BoxDecoration(
                  color: menuController.isActive(route) || menuController.isHovering(route) ? TColors.primary : Colors.transparent,
                  borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Icon
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.lg, right: TSizes.md, top: TSizes.md, bottom: TSizes.md),
                    child: menuController.isActive(route)
                    ? Icon(icon, size: 22, color: TColors.white,)
                    : Icon(icon, size: 22, color: menuController.isHovering(route) ? TColors.white : TColors.darkGrey)
                  ),

                  //Text
                  if(menuController.isActive(route) || menuController.isHovering(route))
                    Flexible(child: Text(itemName, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)))
                  else
                    Flexible(child: Text(itemName, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.darkerGrey)))
                ],
              ),
            ),
          ))
    );
  }
}
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/common/widgets/images/image_uploader.dart';
import 'package:timesheet_flutter/utils/constants/enums.dart';
import 'package:timesheet_flutter/utils/constants/image_strings.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class ImageAndMeta extends StatelessWidget {
  const ImageAndMeta({super.key});

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.symmetric(vertical: TSizes.lg, horizontal: TSizes.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              //User Image
              const TImageUploader(
                right: 10,
                bottom: 20,
                left: null,
                width: 200,
                height: 200,
                circular: true,
                icon: Iconsax.camera,
                imageType: ImageType.asset,
                image: TImages.defaultImage,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('Admin', style: Theme.of(context).textTheme.headlineLarge),
              Text('admin@gmail.com', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),

        ],
      ),
    );
  }
}

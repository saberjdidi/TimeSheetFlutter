
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/validators/validation.dart';

class SettingsForm extends StatelessWidget {
  const SettingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.symmetric(vertical: TSizes.lg, horizontal: TSizes.md),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('App Settings', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: TSizes.spaceBtwSections),

                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'App Name',
                      label: Text('App Name'),
                      prefixIcon: Icon(Iconsax.user)
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                Row(
                  children: [
                    //FirstName
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Tax %',
                            label: Text('Tax Rate (%)'),
                            prefixIcon: Icon(Iconsax.tag),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    /*
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Shipping Cost (\$)',
                            label: Text('Shipping Cost (\$)'),
                            prefixIcon: Icon(Iconsax.tag),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    //LastName
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Free Shipping After (\$)',
                            label: Text('Free Shipping Threshold (\$)'),
                            prefixIcon: Icon(Iconsax.ship)
                        ),
                        validator: (value) => TValidator.validateEmptyText('Phone Number', value),
                      ),
                    ),
                     */
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: const Text('Update App Settings')),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

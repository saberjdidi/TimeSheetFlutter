import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/validators/validation.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.symmetric(vertical: TSizes.lg, horizontal: TSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Profile Details', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              //First&LastName
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      //FirstName
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'FirstName',
                            label: Text('FirstName'),
                            prefixIcon: Icon(Iconsax.user)
                          ),
                          validator: (value) => TValidator.validateEmptyText('FirstName', value),
                        ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwInputFields),
                      //LastName
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'LastName',
                              label: Text('LastName'),
                              prefixIcon: Icon(Iconsax.user)
                          ),
                          validator: (value) => TValidator.validateEmptyText('LastName', value),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  //Email & Phone
                  Row(
                    children: [
                      //FirstName
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Email',
                              label: Text('Email'),
                              prefixIcon: Icon(Iconsax.forward),
                            enabled: false
                          ),
                        ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      //LastName
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Phone Number',
                              label: Text('Phone Number'),
                              prefixIcon: Icon(Iconsax.mobile)
                          ),
                          validator: (value) => TValidator.validateEmptyText('Phone Number', value),
                        ),
                      ),
                    ],
                  ),
                ],
              )
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text('Update Profile')),
              )
            ],
          ),
        )
      ],
    );
  }
}

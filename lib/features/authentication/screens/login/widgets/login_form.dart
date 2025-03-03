
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/features/authentication/controllers/login_controller.dart';
import 'package:timesheet_flutter/features/authentication/screens/signup/signup_screen.dart';
import 'package:timesheet_flutter/routes/routes.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/constants/text_strings.dart';
import 'package:timesheet_flutter/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              controller: controller.email,
              validator: TValidator.validateEmail,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            ///Password
            Obx(() => TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validateEmptyText('Password', value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
                  )
              ),
            )),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            ///Remember Me & Forget Password
            Row(
              children: [
                //Remember Me
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value = value!
                    )),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                //Forget Password
                TextButton(
                    onPressed: () => Get.toNamed(TRoutes.forgetPassword),
                    child: const Text(TTexts.forgetPassword)
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.emailAndPasswordSignIn(),
                  //onPressed: () => controller.registerAdmin(),
                  child: const Text(TTexts.signIn)
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///Sign Up Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: (){
                      Get.to(const SignUpScreen());
                    },
                    child: const Text(TTexts.createAccount))
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
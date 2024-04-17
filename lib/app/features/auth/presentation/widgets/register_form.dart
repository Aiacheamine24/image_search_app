import 'package:flutter/material.dart';
import 'package:image_motor_search_app/app/core/constants/app_sizes.dart';
import 'package:image_motor_search_app/app/core/utils/pick_image.dart';
import 'package:image_motor_search_app/app/core/widgets/custom_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Form(
        child: Column(children: [
      CustomTextField(
        label: "Username",
        hintText: "Enter your username",
        prefixIcon: const Icon(Icons.person),
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        controller: usernameController,
      ),
      const SizedBox(height: Sizes.p16),
      CustomTextField(
        label: "Email",
        hintText: "Enter your email",
        prefixIcon: const Icon(Icons.email),
        keyboardType: TextInputType.emailAddress,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        controller: emailController,
      ),
      const SizedBox(height: Sizes.p16),
      CustomTextField(
        label: "Password",
        hintText: "Enter your password",
        prefixIcon: const Icon(Icons.password),
        keyboardType: TextInputType.visiblePassword,
        isPassword: true,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        controller: passwordController,
      ),
      const SizedBox(height: Sizes.p8),
      ElevatedButton(
          onPressed: () async {
            final image = await pickImage();
            final bytes = await imageToBytes(image!);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Style.radius),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.camera_alt,
                  size: Style.iconSize, color: Colors.white),
              const SizedBox(width: Sizes.p8),
              Column(
                children: [
                  Text(
                    'Face recognition Authentication',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ],
              ),
            ],
          ))
    ]));
  }
}

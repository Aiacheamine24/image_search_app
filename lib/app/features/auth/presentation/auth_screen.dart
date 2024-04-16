import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_motor_search_app/app/constants/app_sizes.dart';
import 'package:image_motor_search_app/app/constants/constants.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/side_image.dart';
import 'package:image_motor_search_app/app/widgets/custom_text_field.dart';
import 'package:image_motor_search_app/app/widgets/take_picture_screen.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = '/auth';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: null,
      body: Row(
        children: [
          width > 600
              ? ImageSide()
              : const SizedBox(
                  width: 0,
                ),
          Flexible(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(Sizes.p20),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          logoURI,
                          width: imageWidth,
                        ),
                        // Ajoutez votre widget Text ici
                        Text(
                          'Welcome back to\nImage Motor Search',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),

                    const SizedBox(height: Sizes.p32),
                    CustomTextField(
                      label: "Email",
                      hintText: "Enter your email",
                      prefixIcon: const Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) =>
                          FocusScope.of(context).nextFocus(),
                      controller: emailController,
                    ),
                    const SizedBox(height: Sizes.p16),
                    CustomTextField(
                      label: "Password",
                      hintText: "Enter your password",
                      prefixIcon: const Icon(Icons.lock),
                      obscureText: true,
                      isPassword: true,
                      onFieldSubmitted: (value) {
                        // Submit the form
                        FocusScope.of(context).unfocus();
                      },
                      controller: passwordController,
                    ),
                    const SizedBox(height: Sizes.p16),
                    // Ask to the user to take a picture for face recognition
                    ElevatedButton(
                        onPressed: () async {
                          final cameras = await availableCameras();
                          final firstCamera = cameras.first;

                          final imagePath = await Navigator.push(
                            // ignore: use_build_context_synchronously
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TakePictureScreen(camera: firstCamera),
                            ),
                          );

                          if (imagePath != null) {
                            // Use the imagePath for face recognition
                          }
                          print(imagePath);
                        },
                        // ...

                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

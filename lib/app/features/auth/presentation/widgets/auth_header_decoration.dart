import 'package:flutter/material.dart';
import 'package:image_motor_search_app/app/core/constants/app_sizes.dart';
import 'package:image_motor_search_app/app/core/constants/constants.dart';

class AuthHeaderDecoration extends StatelessWidget {
  const AuthHeaderDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

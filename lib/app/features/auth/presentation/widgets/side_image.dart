import 'package:flutter/material.dart';
import 'package:image_motor_search_app/app/core/constants/constants.dart';

class ImageSide extends StatelessWidget {
  const ImageSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Stack(
        children: [
          Image.network(
            imageSideURI,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to\nImage Motor Search',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

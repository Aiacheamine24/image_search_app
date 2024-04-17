import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_motor_search_app/app/core/constants/app_sizes.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/cubit/auth_state.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/auth_header_decoration.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/login_widget.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/register_widget.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/side_image.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = '/auth';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: null,
      body: BlocProvider<AuthCubit>(
        create: (context) => AuthCubit(),
        child: Row(
          children: [
            width > 600 ? const ImageSide() : const SizedBox(width: 0),
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
                      const AuthHeaderDecoration(),
                      const SizedBox(height: Sizes.p32),
                      // To transform into dynamic form for login or register
                      // LoginWidget(),
                      // RegisterWidget()
                      // Ici on doit ecouter le changement de l'etat pour afficher le widget correspondant
                      BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, state) {
                          return state.selectedWidget ==
                                  LoginWidget.defaultWidgetName
                              ? const LoginWidget()
                              : const RegisterWidget();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

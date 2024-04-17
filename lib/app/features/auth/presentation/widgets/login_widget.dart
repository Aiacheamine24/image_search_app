import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_motor_search_app/app/core/constants/app_sizes.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/login_form.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/register_widget.dart';

class LoginWidget extends StatelessWidget {
  static const defaultWidgetName = '/LoginWidget';
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const LoginForm(),
        const SizedBox(height: Sizes.p16),
        TextButton(
          onPressed: () => context
              .read<AuthCubit>()
              .changeWidget(widgetName: RegisterWidget.defaultWidgetName),
          child: Text(
            'Don\'t have an account? Register',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
      ],
    ));
  }
}

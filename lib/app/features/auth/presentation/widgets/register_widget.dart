import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_motor_search_app/app/constants/app_sizes.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/login_widget.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/register_form.dart';

class RegisterWidget extends StatelessWidget {
  static const defaultWidgetName = '/RegisterWidget';
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const RegisterForm(),
          const SizedBox(height: Sizes.p16),
          TextButton(
            onPressed: () => context
                .read<AuthCubit>()
                .changeWidget(widgetName: LoginWidget.defaultWidgetName),
            child: Text(
              'Have an account? Login',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

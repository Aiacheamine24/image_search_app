import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState());

  Future<void> changeWidget({required String widgetName}) async {
    emit(state.copyWith(selectedWidget: widgetName));
  }
}

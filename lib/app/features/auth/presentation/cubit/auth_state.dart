import 'package:equatable/equatable.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/login_widget.dart';

class AuthState extends Equatable {
  final String selectedWidget;
  final bool isLoading;
  final bool isSuccessful;
  final String? errorMessage;

  const AuthState(
      {this.selectedWidget = LoginWidget.defaultWidgetName,
      this.isLoading = false,
      this.isSuccessful = false,
      this.errorMessage});

  @override
  List<Object?> get props =>
      [selectedWidget, isLoading, isSuccessful, errorMessage];

  AuthState copyWith({
    String? selectedWidget,
    bool? isLoading,
    bool? isSuccessful,
    String? errorMessage,
  }) {
    return AuthState(
      selectedWidget: selectedWidget ?? this.selectedWidget,
      isLoading: isLoading ?? this.isLoading,
      isSuccessful: isSuccessful ?? this.isSuccessful,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/widgets/login_widget.dart';

class AuthState extends Equatable {
  final String selectedWidget;

  const AuthState({this.selectedWidget = LoginWidget.defaultWidgetName});

  @override
  List<Object?> get props => [selectedWidget];

  AuthState copyWith({
    String? selectedWidget,
  }) {
    return AuthState(
      selectedWidget: selectedWidget ?? this.selectedWidget,
    );
  }
}

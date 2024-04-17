abstract interface class RegisterUserModel {
  static bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return password.length >= 6;
  }

  static bool isUsernameValid(String username) {
    return username.length >= 6;
  }
}

class RegisterUserModelImpl implements RegisterUserModel {
  String username;
  String email;
  String password;
  String imagePath;

  RegisterUserModelImpl({
    required this.username,
    required this.email,
    required this.password,
    required this.imagePath,
  }) {
    if (!RegisterUserModel.isUsernameValid(username)) {
      throw Exception('Username must be at least 6 characters long');
    }
    if (!RegisterUserModel.isEmailValid(email)) {
      throw Exception('Invalid email');
    }
    if (!RegisterUserModel.isPasswordValid(password)) {
      throw Exception('Password must be at least 6 characters long');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
      'face_image': imagePath,
    };
  }
}

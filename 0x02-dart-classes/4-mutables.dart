// File: 4-mutables.dart

class Password {
  String _password;

  Password({String password = ""}) : _password = password;

  bool isValid() {
    // Check if the password meets the criteria
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (!_password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    if (!_password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    if (!_password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    return true;
  }

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }

  @override
  String toString() {
    return "Password $_password";
  }
}

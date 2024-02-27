// File: 3-private_password.dart

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

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}

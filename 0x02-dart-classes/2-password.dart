// File: 2-password.dart

class Password {
  String password;

  Password({this.password = ""});

  bool isValid() {
    // Check if the password meets the criteria
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    if (!password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    if (!password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}

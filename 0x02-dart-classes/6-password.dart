// File: 6-password.dart

class Password {
  Password({required String password}) {
    this._password = password;
  }

  /// a "private" password
  late String _password;

  String get password => _password;
  set password(String pass) => _password = pass;

  bool isValid() {
    if (_password.length >= 8 && _password.length <= 16) {
      RegExp exp = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$");
      return exp.hasMatch(_password);
    }
    return false;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

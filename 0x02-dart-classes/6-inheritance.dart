// File: 6-inheritance

import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String user_password = '',
  }) : super(password: user_password);

  String get user_password => this.password;
  set user_password(String newPassword) => this.password = newPassword;

  // Override toJson to include user_password
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // fromJson method to create a User instance from a map.
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: userJson['user_password']);}

  // Override toString to include validation status of the password
  @override
  String toString() => 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
}

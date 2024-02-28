// File: 3-greet_user.dart

import 'dart:async';
import 'dart:convert'; // Importing 'dart:convert' for JSON decoding

import '3-util.dart'; // Importing the file that contains fetchUserData() and checkCredentials()

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = json.decode(userData);
    String username = userDataMap['username'];
    return "Hello $username";
  } catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  try {
    bool isAuthenticated = await checkCredentials();
    print("There is a user: $isAuthenticated");
    if (isAuthenticated) {
      return await greetUser();
    } else {
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}

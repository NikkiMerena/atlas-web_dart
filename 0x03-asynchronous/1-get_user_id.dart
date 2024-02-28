// File: 1-get_user_id.dart

import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  // Call fetchUserData() to get the user data
  String userData = await fetchUserData();

  // Parse the JSON data to extract the user ID
  Map<String, dynamic> userDataMap = json.decode(userData);
  String userId = userDataMap['id'];

  return userId;
}

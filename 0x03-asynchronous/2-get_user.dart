// File: 2-get_user.dart

import '2-util.dart';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    print(userData); // Print the user's string representation
  } catch (error) {
    print('error caught: $error');
  }
}

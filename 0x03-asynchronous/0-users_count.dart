// File: 0-users_count.dart

import '0-util.dart'; // Importing the file that contains fetchUsersCount()

Future<void> usersCount() async {
  // Calling fetchUsersCount() to get the user count
  int count = await fetchUsersCount();
  print(count);
}

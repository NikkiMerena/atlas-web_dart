// File: 4-get_sum.dart

import 'dart:async';
import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetching user data
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = json.decode(userData);
    String userId = userDataMap['id'];

    // Fetching user Data
    String userOrders = await fetchUserOrders(userId);
    List<dynamic> orders = json.decode(userOrders);

    // Calculating total price
    double totalPrice = 0;
    for (String product in orders) {
      String productPrice = await fetchProductPrice(product);
      totalPrice += double.parse(productPrice);
    }

    return totalPrice;
  } catch (error) {
    return -1; // Return -1 if an error occurs
  }
}

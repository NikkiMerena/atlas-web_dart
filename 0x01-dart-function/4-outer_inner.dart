 // Define the inner function
String inner(String name) {
  // Split the name into two words
  List<String> nameParts = name.split(' ');
  // Take the first character of the first word and concatenate it with the second word
  String result = nameParts[1][0].toUpperCase() + '.' + nameParts[0];
  // Return the result
  return result;
}

// Define the outer function
void outer(String name, String id) {
  // Call the inner function to get the formatted name
  String formattedName = inner(name);
  // Print the output
  print('Hello Agent $formattedName your id is $id');
}

// Main function to call the outer function
void main() {
  outer("Youssef Belhadj", "001");
}

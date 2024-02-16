void main(List<String> args) {
  // Convert the first command-line argument (string) to an integer and store it in the variable 'number'
  int number = int.parse(args[0]);

  // Check if the number is greater than 0
  if (number > 0) {
    // Print a message indicating that the number is positive
    print('$number is positive');
  }
  // Check if the number is equal to 0
  else if (number == 0) {
    // Print a message indicating that the number is zero
    print('$number is zero');
  }
  // If the number is not greater than 0 and not equal to 0, it must be negative
  else {
    // Print a message indicating that the number is negative
    print('$number is negative');
  }
}

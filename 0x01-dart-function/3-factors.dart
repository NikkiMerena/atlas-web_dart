// Recursive function to compute the factorial of a postive integer 'f'
int fact(int f) {
  // Base case: If 'f' is equal to 1 or less than or equal to 0, return 1
  if (f == 1 || f <= 0) {
    return 1;
  }
  // Recursive case: If 'f' is greater than 1, calculate the factorial recursively
  else {
    // Return 'f' multipled by the factorial of 'f -1'
    return f * fact(f - 1);
  }
}

// Main function to test the 'fact()' function
void main() {
  // Testing with input 0 and printing the result
  print(fact(0)); // Output:1

  // Testing with input 1 and printing the result
  print(fact(1)); // Output: 1

  // Testing with input 5 and printing the result
  print(fact(5)); // Output: 120
}

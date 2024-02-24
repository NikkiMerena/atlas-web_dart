bool isPalindrome(String s) {
  // Check if the length of the string is less than 3
  if (s.length < 3) {
    // If the length is less than 3, return false (as per the task requirement)
    return false;
  }

  // Convert the string to lowercase for case-insensitive comparison
  s = s.toLowerCase();

  // Initialize two pointers for traversing the string from both ends
  int left = 0;
  int right = s.length - 1;

  // Iterate until the pointers meet
  while (left < right) {
    // Compare characters at corresponding positions
    if (s[left] != s[right]) {
      // If characters don't match, return false
      return false;
    }
    // Move the pointers inward
    left++;
    right--;
  }

  // If the entire string is traversed without finding any mismatches, return true
  return true;
}

void main() {
  print(isPalindrome("aa"));      // false
  print(isPalindrome("abcba"));   // true
  print(isPalindrome("abcde"));   // false
}

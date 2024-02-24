// Function to check if a string is a palindrone
bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

// Function to find the longest palindrome substring
String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none"; // If the length of the string is less than 3, return "none"
  }

  String longest = ""; // Initialize the longest palindrome substring found so far

  // Iterate through all possible substrings of the input string
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j); // Extract the current substring
      if (isPalindrome(substring) && substring.length > longest.length) {
        // If the substring is a palindrome and its length is greater than the length of the current longest palindrome substring found so far
        longest = substring; // Update the longest palindrome substring
      }
    }
  }

  return longest.isNotEmpty ? longest : "none"; // Return the longest palindrome substring found or "none" if none is found
}

void main() {
  print(longestPalindrome("abcde"));   // none
  print(longestPalindrome("azeghjhg")); // ghjhg
  print(longestPalindrome("aaabvf"));   // aaa
}


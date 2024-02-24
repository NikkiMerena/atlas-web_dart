String longestUniqueSubstring(String str) {
  if (str.isEmpty) return ""; // Handle empty string case

  Map<String, int> charIndexMap = {}; // Map to store character indices
  int start = 0; // Start pointer of the current substring
  int end = 0; // End pointer of the current substring
  int maxLength = 0; // Length of the longest non-repeaating subdtring
  int maxStart = 0; // Start index of the longest non-repeating substring

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    // If current character has been seen before and its index after the start pointer,
    // update the start pointer to the next position after the last occurrence of this character.
    if (charIndexMap.containsKey(currentChar) && (charIndexMap[currentChar] ?? -1) >= start) {
      start = (charIndexMap[currentChar] ?? -1) + 1;
    }

    // Update the end pointer to the current index.
    end = i;

    // Update the index of the current character in the map.
    charIndexMap[currentChar] = i;

    // Update the maxium length and start index of the longest non-repeating substring if needed.
    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }

  // Return the longest non-repeating substring.
  return str.substring(maxStart, maxStart + maxLength);
}

void main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}

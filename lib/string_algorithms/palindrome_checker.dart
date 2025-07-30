/// Checks if the given [text] is a palindrome.
///
/// Ignores spaces and is case-insensitive.
///
/// Example:
/// ```dart
/// bool result = isPalindrome("A man a plan a canal Panama");
/// print(result); // true
/// ```
bool isPalindrome(String text) {
  String cleaned = text.replaceAll(RegExp(r'\s+'), '').toLowerCase();

  int start = 0;
  int end = cleaned.length - 1;

  while (start < end) {
    if (cleaned[start] != cleaned[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}

import 'package:pofk_algorithm/string_algorithms/palindrome_checker.dart';
import 'package:test/test.dart';

void main() {
  group('Palindrome Checker Tests', () {
    test('Various palindrome and non-palindrome strings', () {
      expect(isPalindrome("racecar"), isTrue);
      expect(isPalindrome("Level"), isTrue);
      expect(isPalindrome("A man a plan a canal Panama"), isTrue);
      expect(isPalindrome("Hello"), isFalse);
      expect(isPalindrome("No lemon no melon"), isTrue);
    });

    test('Empty and single character strings', () {
      expect(isPalindrome(""), isTrue);
      expect(isPalindrome("a"), isTrue);
      expect(isPalindrome(" "), isTrue);
    });
  });
}

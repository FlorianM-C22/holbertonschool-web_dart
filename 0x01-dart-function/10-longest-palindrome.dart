import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) return "none";
  for (var i = 0; i < s.length; i++) {
    for (var j = i + 1; j < s.length; j++) {
      if (isPalindrome(s.substring(i, j))) {
        return s.substring(i, j);
      }
    }
  }
  return "none";
}

import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) return "none";
  var best = "none";
  for (var i = 0; i < s.length; i++) {
    for (var j = i + 3; j <= s.length; j++) {
      final sub = s.substring(i, j);
      if (isPalindrome(sub) &&
          (best == "none" || sub.length > best.length)) {
        best = sub;
      }
    }
  }
  return best;
}

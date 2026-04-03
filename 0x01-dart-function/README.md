## Resources

**Read or watch**:

*   [Dart - Syntax](/rltoken/SGK36fxudYUQ8vlA1_-Wjw)
*   [Dart - Conditions](/rltoken/vc_GkxMb68Mfryko_g4nAw)
*   [Dart - Loops](/rltoken/auZaPD9i2v0GGfSSdaVPPw)
*   [Dart - Map](/rltoken/hE3eBDOK11ZRIQpvt9edAA)
*   [Dart - Cheatsheet](/rltoken/H3eJUIodeSrRUVbgyFG1Dg)
*   [Iterables Collections](/rltoken/tVro42g_z9ycG0qyqa5dvQ)

# **Learning Objectives**

At the end of this project, you are expected to be able to [explain to anyone](/rltoken/q3d1DmO7-KnwzMldEdceEw), **without the help of Google**:

### General

*   Define and use Dart functions with parameters and different return types.
*   Apply conditional logic and control flow within functions
*   Call functions from other functions, including recursive function calls
*   Manipulate strings, lists, and maps inside functions using Dart built-in methods

## Requirements

*   All your files will be interpreted/compiled on Ubuntu 20.04 LTS using `Dart 3.x.x`
*   All your files should end with a new line
*   A `README.md` file, at the root of the folder of the project, is mandatory

## Tasks

### 1.

"Write a dart function \`helloFunction()\` that accepts one argument String and print \`Hello \\u003cstr\\u003e from dart\`\\r\\n\\r\\n\* Function prototype :\`void helloFunction(String str)\`\\r\\n\\r\\n\`\`\`\\r\\nHolberton@school:Dart$ cat 0-main.dart\\r\\nimport '0-hellofunc.dart';\\r\\n\\r\\nvoid main() {\\r\\n helloFunction(\\"Holberton\\");\\r\\n}\\r\\nHolberton@school:Dart$\\r\\nHolberton@school:Dart$ dart 0-main.dart\\r\\nHello Holberton from dart\\r\\nHolberton@school:Dart$\\r\\n\`\`\`"

Write a dart function `helloFunction()` that accepts one argument String and print `Hello <str> from dart`

*   Function prototype :`void helloFunction(String str)`

Holberton@school:Dart$ cat 0-main.dart
import '0-hellofunc.dart';

void main() {
  helloFunction("Holberton");
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 0-main.dart
Hello Holberton from dart
Holberton@school:Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``0-hellofunc.dart``

  

### 2.

"Write a dart function \`concatStr()\` that accepts two arguments \`str1\`, \`str2\`.\\r\\n\\r\\n\* Function prototype : \`String concatStr(String str1, String str2)\`\\r\\n\* Leave space between \`str1\` and \`str2\`\\r\\n\\r\\n\`\`\`\\r\\nHolberton@school:Dart$ cat 1-main.dart\\r\\nimport '1-concat\_strings.dart';\\r\\n\\r\\nvoid main() {\\r\\n print(concatStr(\\"Holberton\\", \\"School\\"));\\r\\n}\\r\\nHolberton@school:Dart$\\r\\nHolberton@school:Dart$ dart 1-main.dart\\r\\nHolberton School\\r\\nHolberton@school:Dart$\\r\\n\`\`\`"

Write a dart function `concatStr()` that accepts two arguments `str1`, `str2`.

*   Function prototype : `String concatStr(String str1, String str2)`
*   Leave space between `str1` and `str2`

Holberton@school:Dart$ cat 1-main.dart
import '1-concat_strings.dart';

void main() {
  print(concatStr("Holberton", "School"));
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 1-main.dart
Holberton School
Holberton@school:Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``1-concat_strings.dart``

  

### 3.

"Write three functions in dart the first function \`add()\` that accepts two arguments \`a\`, \`b\` and return the sum.\\r\\nAnd the secode function \`sub()\` that accepts two arguments \`a\`, \`b\` and return Subtraction of them.\\r\\nThe third function \`showFunc()\` that returns a message with the output of the two other function.\\r\\n\\r\\n\* First Function prototype : \`int add(int a, int b)\`\\r\\n\* Second Function prototype : \`int sub(int a, int b)\`\\r\\n\* Third Function prototype : \`String showFunc(int a, int b)\`\\r\\n\\r\\n\`\`\`\\r\\nHolberton@school:Dart$ cat 2-main.dart\\r\\nimport '2-sumfunc.dart';\\r\\n\\r\\nvoid main(List\\u003cString\\u003e args) {\\r\\n var a = int.parse(args\[0\]);\\r\\n var b = int.parse(args\[1\]);\\r\\n print(showFunc(a, b));\\r\\n}\\r\\nHolberton@school:Dart$\\r\\nHolberton@school:Dart$ dart 2-main.dart 10 15\\r\\nAdd 10 + 15 = 25\\r\\nSub 10 - 15 = -5\\r\\nHolberton@school:Dart$\\r\\n\`\`\`"

Write three functions in dart the first function `add()` that accepts two arguments `a`, `b` and return the sum. And the secode function `sub()` that accepts two arguments `a`, `b` and return Subtraction of them. The third function `showFunc()` that returns a message with the output of the two other function.

*   First Function prototype : `int add(int a, int b)`
*   Second Function prototype : `int sub(int a, int b)`
*   Third Function prototype : `String showFunc(int a, int b)`

Holberton@school:Dart$ cat 2-main.dart
import '2-sumfunc.dart';

void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print(showFunc(a, b));
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 2-main.dart 10 15
Add 10 + 15 = 25
Sub 10 - 15 = -5
Holberton@school:Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``2-sumfunc.dart``

  

### 4.

"Write recursive function to compute the factorial of a positive integer \`fact()\`\\r\\n\\r\\n\* Function prototype : \`int fact(int f)\`\\r\\n \* If \`f == 1\` the function return 1\\r\\n \* If \`f \\u003c= 0\` return 1\\r\\n \\r\\n \`\`\`\\r\\nHolberton@school:Dart$ cat 3-main.dart\\r\\nimport '3-factors.dart';\\r\\n\\r\\nvoid main() {\\r\\n print(fact(0));\\r\\n print(fact(1));\\r\\n print(fact(5));\\r\\n}\\r\\n\\r\\n\\r\\nHolberton@school:Dart$\\r\\nHolberton@school:Dart$ dart 3-main.dart\\r\\n1\\r\\n1\\r\\n120\\r\\nHolberton@school:Dart$\\r\\n\`\`\`"

Write recursive function to compute the factorial of a positive integer `fact()`

*   Function prototype : `int fact(int f)`
*   If `f == 1` the function return 1
*   If `f <= 0` return 1

Holberton@school:Dart$ cat 3-main.dart
import '3-factors.dart';

void main() {
  print(fact(0));
  print(fact(1));
  print(fact(5));
}

Holberton@school:Dart$
Holberton@school:Dart$ dart 3-main.dart
1
1
120
Holberton@school:Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``3-factors.dart``

  

### 5.

"Write two functions the first function \`outer()\` take two argument \`name\`, \`id\` and print the output of the inside function \`inner()\`.\\r\\n\\r\\n\* Function prototype : \`void outer(String name, String id)\`\\r\\n\* Function prototype : \`String inner()\`\\r\\n\* \`name\` will always consist of two words\\r\\n\\r\\n\\r\\n \`\`\`\\r\\nHolberton@school:Dart$ cat 4-main.dart\\r\\nimport '4-outer\_inner.dart';\\r\\n\\r\\nvoid main() {\\r\\n outer(\\"Youssef Belhadj\\", \\"001\\");\\r\\n}\\r\\n\\r\\nHolberton@school:Dart$\\r\\nHolberton@school:Dart$ dart 4-main.dart\\r\\nHello Agent B.Youssef your id is 001\\r\\nHolberton@school:Dart$\\r\\n\`\`\`"

Write two functions the first function `outer()` take two argument `name`, `id` and print the output of the inside function `inner()`.

*   Function prototype : `void outer(String name, String id)`
*   Function prototype : `String inner()`
*   `name` will always consist of two words

Holberton@school:Dart$ cat 4-main.dart
import '4-outer_inner.dart';

void main() {
  outer("Youssef Belhadj", "001");
}

Holberton@school:Dart$
Holberton@school:Dart$ dart 4-main.dart
Hello Agent B.Youssef your id is 001
Holberton@school:Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``4-outer_inner.dart``

  

### 6.

"Create a function \`calculateArea()\` that accepts two variables \`height\` and \`base\` and returns the area of the triangle.\\r\\n\\r\\nFunction prototype : \`double calculateArea(double height, double base);\`\\r\\n\\r\\nThe result should be rounded to two decimal places\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 5-main.dart\\r\\nimport '5-calculate-area.dart';\\r\\n\\r\\nmain() {\\r\\n print(calculateArea(20,7));\\r\\n print(calculateArea(10,7));\\r\\n print(calculateArea(8.5,3.7));\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 5-main.dart\\r\\n70.0\\r\\n35.0\\r\\n15.73\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n\\r\\n"

Create a function `calculateArea()` that accepts two variables `height` and `base` and returns the area of the triangle.

Function prototype : `double calculateArea(double height, double base);`

The result should be rounded to two decimal places

achref@achref:~$ cat 5-main.dart
import '5-calculate-area.dart';

main() {
  print(calculateArea(20,7));
  print(calculateArea(10,7));
  print(calculateArea(8.5,3.7));
}
achref@achref:~$
achref@achref:~$ dart 5-main.dart
70.0
35.0
15.73
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``5-calculate-area.dart``

  

### 7.

"Create a function \`convertToF()\` that accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list.\\r\\n\\r\\nFunction prototype : \`List\\u003cdouble\\u003e convertToF(List\\u003cdouble\\u003e temperaturesInC);\`\\r\\n\\r\\nTo convert temperature from celsius to fahrenheit you need to multiply it by 9, followed by a division by 5 and finally add 32.\\r\\n\\r\\nLet’s for example convert 25 degrees celsius : (25°C × 9/5) + 32 = 77°F\\r\\nYou have to use the map method.\\r\\nAll the results should be rounded to two decimal points.\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 6-main.dart\\r\\nimport '6-convert-to-fahrenheit.dart';\\r\\n\\r\\nmain() {\\r\\n print(convertToF(\[25, 26, 23, 27, 30\]));\\r\\n print(convertToF(\[22.5, 26, 27.3, 23.6, 25\]));\\r\\n print(convertToF(\[-4.2, -2, 0.5, -5, -1.7\]));\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 6-main.dart\\r\\n\[77.0, 78.8, 73.4, 80.6, 86.0\]\\r\\n\[72.5, 78.8, 81.14, 74.48, 77.0\]\\r\\n\[24.44, 28.4, 32.9, 23.0, 28.94\]\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n\\r\\n"

Create a function `convertToF()` that accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list.

Function prototype : `List<double> convertToF(List<double> temperaturesInC);`

To convert temperature from celsius to fahrenheit you need to multiply it by 9, followed by a division by 5 and finally add 32.

Let’s for example convert 25 degrees celsius : (25°C × 9/5) + 32 = 77°F You have to use the map method. All the results should be rounded to two decimal points.

achref@achref:~$ cat 6-main.dart
import '6-convert-to-fahrenheit.dart';

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
achref@achref:~$
achref@achref:~$ dart 6-main.dart
[77.0, 78.8, 73.4, 80.6, 86.0]
[72.5, 78.8, 81.14, 74.48, 77.0]
[24.44, 28.4, 32.9, 23.0, 28.94]
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``6-convert-to-fahrenheit.dart``

  

### 8.

"Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.\\r\\n\\r\\nCreate a function \`whoWins()\` that calculates the total number of points for each team and return the winning team:\\r\\n\\r\\n- If teamA points \\u003e teamB points return 1\\r\\n- If teamA points \\u003c teamB points return 2\\r\\n- If teamA points = TeamB points return 0\\r\\n\\r\\nA free throw shot counts as 1 Point.\\r\\n\\r\\nA 2 pointer shot counts as 2 Points.\\r\\n\\r\\nA 3 pointer shot counts as 3 Points.\\r\\n\\r\\nFunction prototype : \`int whoWins(Map\\u003cString, int\\u003e teamA, Map\\u003cString, int\\u003e teamB);\`\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 7-main.dart\\r\\nimport '7-basketball-shots.dart';\\r\\n\\r\\nmain() {\\r\\n var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};\\r\\n var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};\\r\\n\\r\\n print(whoWins(teamA, teamB));\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 7-main.dart\\r\\n1\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.

Create a function `whoWins()` that calculates the total number of points for each team and return the winning team:

*   If teamA points > teamB points return 1
*   If teamA points < teamB points return 2
*   If teamA points = TeamB points return 0

A free throw shot counts as 1 Point.

A 2 pointer shot counts as 2 Points.

A 3 pointer shot counts as 3 Points.

Function prototype : `int whoWins(Map<String, int> teamA, Map<String, int> teamB);`

achref@achref:~$ cat 7-main.dart
import '7-basketball-shots.dart';

main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
achref@achref:~$
achref@achref:~$ dart 7-main.dart
1
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``7-basketball-shots.dart``

  

### 9.

"Write a function \`longestUniqueSubstring()\` that accepts one argument \`String\` and returns the longest non-repeating substring.\\r\\n\\r\\nFunction prototype : \`String longestUniqueSubstring(String str);\`\\r\\n\\r\\nIf multiple substrings tie in length, return the one which occurs first.\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 8-main.dart\\r\\nimport '8-longest-unique-substring.dart';\\r\\n\\r\\nmain() {\\r\\n print(longestUniqueSubstring(\\"abcacbd\\"));\\r\\n print(longestUniqueSubstring(\\"aaaaaaaa\\"));\\r\\n print(longestUniqueSubstring(\\"abcde\\"));\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 8-main.dart\\r\\nacbd\\r\\na\\r\\nabcde\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Write a function `longestUniqueSubstring()` that accepts one argument `String` and returns the longest non-repeating substring.

Function prototype : `String longestUniqueSubstring(String str);`

If multiple substrings tie in length, return the one which occurs first.

achref@achref:~$ cat 8-main.dart
import '8-longest-unique-substring.dart';

main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
achref@achref:~$
achref@achref:~$ dart 8-main.dart
acbd
a
abcde
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``8-longest-unique-substring.dart``

  

### 10.

"Write a function \`isPalindrome()\` that accepts one argument \`String\` and returns \`True\` if the input \`String\` is a palindrome otherwise it returns \`False\`.\\r\\n\\r\\nFunction prototype: \`bool isPalindrome(String s);\`\\r\\nA palindrome is a sentence that reads the same backward or forward.\\r\\nIf the length of the input string is less than 3 characters it doesn’t count as a palindrome.\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 9-main.dart\\r\\nimport '9-palindrome.dart';\\r\\n\\r\\nmain() {\\r\\n print(isPalindrome(\\"aa\\"));\\r\\n print(isPalindrome(\\"abcba\\"));\\r\\n print(isPalindrome(\\"abcde\\"));\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 9-main.dart\\r\\nfalse\\r\\ntrue\\r\\nfalse\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Write a function `isPalindrome()` that accepts one argument `String` and returns `True` if the input `String` is a palindrome otherwise it returns `False`.

Function prototype: `bool isPalindrome(String s);` A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome.

achref@achref:~$ cat 9-main.dart
import '9-palindrome.dart';

main() {
  print(isPalindrome("aa"));
  print(isPalindrome("abcba"));
  print(isPalindrome("abcde"));
}
achref@achref:~$
achref@achref:~$ dart 9-main.dart
false
true
false
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``9-palindrome.dart``

  

### 11.

"Write a function \`longestPalindrome()\` that accepts one argument \`String\` and returns the longest palindrome substring.\\r\\n\\r\\nFunction prototype : \`String longestPalindrome(String s);\`\\r\\n\\r\\nA palindrome is a sentence that reads the same backward or forward.\\r\\nIf the length of the input string is less than 3 characters it doesn’t count as a palindrome.\\r\\nYou can use the function \`isPalindrome()\`.\\r\\nIf the input string doesn’t contain any substrings return \`none\`.\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 10-main.dart\\r\\nimport '10-longest-palindrome.dart';\\r\\n\\r\\nmain() {\\r\\n print(longestPalindrome(\\"abcde\\"));\\r\\n print(longestPalindrome(\\"azeghjhg\\"));\\r\\n print(longestPalindrome(\\"aaabvf\\"));\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 10-main.dart\\r\\nnone\\r\\nghjhg\\r\\naaa\\r\\nachref@achref:~$\\r\\n\`\`\`"

Write a function `longestPalindrome()` that accepts one argument `String` and returns the longest palindrome substring.

Function prototype : `String longestPalindrome(String s);`

A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome. You can use the function `isPalindrome()`. If the input string doesn’t contain any substrings return `none`.

achref@achref:~$ cat 10-main.dart
import '10-longest-palindrome.dart';

main() {
  print(longestPalindrome("abcde"));
  print(longestPalindrome("azeghjhg"));
  print(longestPalindrome("aaabvf"));
}
achref@achref:~$
achref@achref:~$ dart 10-main.dart
none
ghjhg
aaa
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x01-dart-function``
*   **File:** ``10-longest-palindrome.dart``
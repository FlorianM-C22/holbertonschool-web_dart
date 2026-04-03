## Resources

**Read or watch**:

*   [Asynchronous Programming in Dart](/rltoken/RdTzY_XuZArmMUF2GXvDKw)
*   [Asynchronous Programming in Dart and Flutter](/rltoken/Uta_Izm3BIYHA5RuIx7cxg)

# **Learning Objectives**

At the end of this project, you are expected to be able to [explain to anyone](/rltoken/iEcflt6bNvwO7eKoYJAU_A), **without the help of Google**:

### General

*   Use async/await syntax for handling asynchronous operations.
*   Work with Futures and understand delayed operations.
*   Handle errors using try-catch blocks in async functions.
*   Parse JSON data from API responses and async operations.
*   Make HTTP requests to external APIs like Rick and Morty API

## Requirements

*   All your files will be interpreted/compiled on Ubuntu 20.04 LTS using `Dart 3.x.x`
*   Use the Provided `util.dart` file(no need to push it)
*   All your files should end with a new line
*   A `README.md` file, at the root of the folder of the project, is mandatory

## Tasks

### 1.

"Create a function \`usersCount()\` that prints the number of users.\\r\\n\\r\\nFunction prototype : \`Future\\u003cvoid\\u003e usersCount()\`\\r\\nGets the user count by calling the provided function \`fetchUsersCount()\`. which will simulate fetching data from an api.\\r\\n\\r\\n\* Do not push \`0-util.dart\`\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 0-main.dart\\r\\nimport '0-users\_count.dart';\\r\\n\\r\\nmain() async {\\r\\n await usersCount();\\r\\n}\\r\\nachref@achref:~$ cat 0-util.dart\\r\\n\\r\\nFuture\\u003cint\\u003e fetchUsersCount() =\\u003e Future.delayed(\\r\\n const Duration(seconds: 2),\\r\\n () =\\u003e 19,\\r\\n );\\r\\n\\r\\nachref@achref:~$ dart 0-main.dart\\r\\n19\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Create a function `usersCount()` that prints the number of users.

Function prototype : `Future<void> usersCount()` Gets the user count by calling the provided function `fetchUsersCount()`. which will simulate fetching data from an api.

*   Do not push `0-util.dart`

achref@achref:~$ cat 0-main.dart
import '0-users_count.dart';

main() async {
  await usersCount();
}
achref@achref:~$ cat 0-util.dart

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

achref@achref:~$ dart 0-main.dart
19
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x03-asynchronous``
*   **File:** ``0-users_count.dart``

  

### 2.

"Create a function \`getUserID()\` that returns a future string representing the user’s ID.\\r\\n\\r\\nFunction prototype : \`Future\\u003cString\\u003e getUserId()\`\\r\\n\\r\\nGets the user data by calling the provided function \`fetchUserData()\` which will simulate fetching data from an api.\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 1-main.dart\\r\\nimport '1-get\_user\_id.dart';\\r\\n\\r\\n\\r\\nmain() async {\\r\\n print(await getUserId());\\r\\n}\\r\\nachref@achref:~$ cat 1-util.dart\\r\\nFuture\\u003cString\\u003e fetchUserData() =\\u003e Future.delayed(\\r\\n const Duration(seconds: 2),\\r\\n () =\\u003e\\r\\n '{\\"id\\" : \\"7ee9a243-01ca-47c9-aa14-0149789764c3\\", \\"username\\" : \\"admin\\"}',\\r\\n );\\r\\n\\r\\nachref@achref:~$ dart 1-main.dart\\r\\n7ee9a243-01ca-47c9-aa14-0149789764c3\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Create a function `getUserID()` that returns a future string representing the user’s ID.

Function prototype : `Future<String> getUserId()`

Gets the user data by calling the provided function `fetchUserData()` which will simulate fetching data from an api.

achref@achref:~$ cat 1-main.dart
import '1-get_user_id.dart';

main() async {
  print(await getUserId());
}
achref@achref:~$ cat 1-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

achref@achref:~$ dart 1-main.dart
7ee9a243-01ca-47c9-aa14-0149789764c3
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x03-asynchronous``
*   **File:** ``1-get_user_id.dart``

  

### 3.

"Sometimes fetching data from an api could produce unwanted results and may cause errors therefore it’s wise to handle these errors before they become a problem.\\r\\n\\r\\nCreate a function \`getUser()\` that prints the user’s string representation.\\r\\n\\r\\nFunction prototype : \`Future\\u003cvoid\\u003e getUser()\`\\r\\n\\r\\nGets the user data by calling the provided function \`fetchUser()\`\\r\\n\\r\\nMust use : try-catch\\r\\nIf an error occurs the function should print \\"\`error caught: \\u003cerror\\u003e\` \\"\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 2-main.dart\\r\\nimport '2-get\_user.dart';\\r\\n\\r\\nmain() async {\\r\\n getUser();\\r\\n}\\r\\nachref@achref:~$ cat 2-util.dart\\r\\nFuture\\u003cString\\u003e fetchUser() =\\u003e\\r\\n // Imagine that this function is\\r\\n // more complex and slow.\\r\\n Future.delayed(\\r\\n const Duration(seconds: 2),\\r\\n () =\\u003e throw 'Cannot locate user',\\r\\n );\\r\\n\\r\\nachref@achref:~$ dart 2-main.dart\\r\\nerror caught: Cannot locate user\\r\\nachref@achref:~$\\r\\n\`\`\`"

Sometimes fetching data from an api could produce unwanted results and may cause errors therefore it’s wise to handle these errors before they become a problem.

Create a function `getUser()` that prints the user’s string representation.

Function prototype : `Future<void> getUser()`

Gets the user data by calling the provided function `fetchUser()`

Must use : try-catch If an error occurs the function should print "`error caught: <error>` "

achref@achref:~$ cat 2-main.dart
import '2-get_user.dart';

main() async {
  getUser();
}
achref@achref:~$ cat 2-util.dart
Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

achref@achref:~$ dart 2-main.dart
error caught: Cannot locate user
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x03-asynchronous``
*   **File:** ``2-get_user.dart``

  

### 4.

"Create a function \`greetUser()\` that returns a string as follows \`Hello \\u003cusername\\u003e\` .\\r\\n\\r\\nFunction prototype : \`Future\\u003cString\\u003e greetUser()\`\\r\\n\\r\\nGets the user data by calling the provided function \`fetchUserData()\`\\r\\n\\r\\nMust use try-catch\\r\\nIf an error occurs the function should return : \`error caught: \\u003cerror\\u003e \`\\r\\n\\r\\nCreate a function \`loginUser()\`\\r\\n\\r\\nFunction prototype : \`Future\\u003cString\\u003e loginUser()\`\\r\\n\\r\\nShould call the provided function \`checkCredentials()\` which returns a \`future bool\`.\\r\\n\\r\\n- If \`checkCredentials()\` returns \`true\` \`loginUser()\` should print \`There is a user: true\` and call \`greetUser()\` to return it’s value\\r\\n- If \`checkCredentials()\` returns \`false\` \`loginUser()\` should print \`There is a user: false\` and return \`Wrong credentials\`\\r\\n\\r\\nMust use try-catch\\r\\nIf an error occurs the function should return \`error caught: \\u003cerror\\u003e\` \\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 3-main.dart\\r\\nimport '3-greet\_user.dart';\\r\\n\\r\\nmain() async {\\r\\n print(await loginUser());\\r\\n}\\r\\nachref@achref:~$ cat 3-util.dart\\r\\nFuture\\u003cString\\u003e fetchUserData() =\\u003e Future.delayed(\\r\\n const Duration(seconds: 2),\\r\\n () =\\u003e\\r\\n '{\\"id\\" : \\"7ee9a243-01ca-47c9-aa14-0149789764c3\\", \\"username\\" : \\"admin\\"}',\\r\\n );\\r\\n\\r\\nFuture\\u003cbool\\u003e checkCredentials() =\\u003e\\r\\n Future.delayed(const Duration(seconds: 2), () =\\u003e true);\\r\\n\\r\\nachref@achref:~$ dart 3-main.dart\\r\\nThere is a user: true\\r\\nHello admin\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Create a function `greetUser()` that returns a string as follows `Hello <username>` .

Function prototype : `Future<String> greetUser()`

Gets the user data by calling the provided function `fetchUserData()`

Must use try-catch If an error occurs the function should return : `error caught: <error>`

Create a function `loginUser()`

Function prototype : `Future<String> loginUser()`

Should call the provided function `checkCredentials()` which returns a `future bool`.

*   If `checkCredentials()` returns `true` `loginUser()` should print `There is a user: true` and call `greetUser()` to return it’s value
*   If `checkCredentials()` returns `false` `loginUser()` should print `There is a user: false` and return `Wrong credentials`

Must use try-catch If an error occurs the function should return `error caught: <error>`

achref@achref:~$ cat 3-main.dart
import '3-greet_user.dart';

main() async {
  print(await loginUser());
}
achref@achref:~$ cat 3-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

achref@achref:~$ dart 3-main.dart
There is a user: true
Hello admin
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x03-asynchronous``
*   **File:** ``3-greet_user.dart``

  

### 5.

"Create a function \`calculateTotal()\` that calculates the total price of items for a certain user.\\r\\n\\r\\n\\r\\n- Gets the user data by calling the provided function\` fetchUserData()\`\\r\\n- Gets the user orders by calling the provided function \`fetchUserOrders(id)\` which accepts one argument : ID of the user\\r\\n- Gets the products price by calling the provided function \`fetchProductPrice(product)\` which accepts one argument : product name\\r\\n- Returns the total price of items\\r\\n\* Must use try-catch\\r\\n\* If an error occurs the function should return -1\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 4-main.dart\\r\\nimport '4-get\_sum.dart';\\r\\n\\r\\n\\r\\nmain() async {\\r\\n print(await calculateTotal());\\r\\n}\\r\\n\\r\\nachref@achref:~$ cat 4-util.dart\\r\\nimport 'dart:convert';\\r\\n\\r\\nFuture\\u003cString\\u003e fetchUserOrders(String id) async {\\r\\n var orders = {\\r\\n \\"7ee9a243-01ca-47c9-aa14-0149789764c3\\": \[\\"pizza\\", \\"orange\\"\]\\r\\n };\\r\\n try {\\r\\n return Future.delayed(\\r\\n const Duration(seconds: 2), () =\\u003e json.encode(orders\[id\]));\\r\\n } catch (err) {\\r\\n return \\"error caught : $err\\";\\r\\n }\\r\\n}\\r\\n\\r\\nFuture\\u003cString\\u003e fetchUserData() =\\u003e Future.delayed(\\r\\n const Duration(seconds: 2),\\r\\n () =\\u003e\\r\\n '{\\"id\\" : \\"7ee9a243-01ca-47c9-aa14-0149789764c3\\", \\"username\\" : \\"admin\\"}',\\r\\n );\\r\\n\\r\\nFuture\\u003cString\\u003e fetchProductPrice(product) async {\\r\\n var products = {\\"pizza\\": 20.30, \\"orange\\": 10, \\"water\\": 5, \\"soda\\": 8.5};\\r\\n try {\\r\\n return Future.delayed(\\r\\n const Duration(seconds: 2), () =\\u003e json.encode(products\[product\]));\\r\\n } catch (err) {\\r\\n return \\"error caught : $err\\";\\r\\n }\\r\\n}\\r\\nachref@achref:~$ dart 4-main.dart\\r\\n30.3\\r\\nachref@achref:~$\\r\\n\`\`\`\\r\\n"

Create a function `calculateTotal()` that calculates the total price of items for a certain user.

*   Gets the user data by calling the provided function`fetchUserData()`
*   Gets the user orders by calling the provided function `fetchUserOrders(id)` which accepts one argument : ID of the user
*   Gets the products price by calling the provided function `fetchProductPrice(product)` which accepts one argument : product name
*   Returns the total price of items
*   Must use try-catch
*   If an error occurs the function should return -1

achref@achref:~$ cat 4-main.dart
import '4-get_sum.dart';

main() async {
  print(await calculateTotal());
}

achref@achref:~$ cat 4-util.dart
import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}
achref@achref:~$ dart 4-main.dart
30.3
achref@achref:~$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x03-asynchronous``
*   **File:** ``4-get_sum.dart``

  

### 6.

"Create a file \\"pubspec.yaml\\" containing the following lines :\\r\\n\\r\\n\`\`\`\\r\\nname: rick\_and\_morty\\r\\n\\r\\ndependencies:\\r\\n http: ^1.2.0\\r\\n\\r\\nenvironment:\\r\\n sdk: \\"\\u003e=3.0.0 \\u003c4.0.0\\"\\r\\n\\r\\n\`\`\`\\r\\n\\r\\nThen run :\\r\\n\`dart pub get\`\\r\\n\\r\\nNow we can use http to send requests to an online api.\\r\\n\\r\\nCreate a function \`printRmCharacters()\` that prints all Rick and Morty Characters.\\r\\n\\r\\n\\r\\n\* You should use \[Rick and Morty API\](/rltoken/sw4eYN8hy3A4hwV3gOWpRg) to get the data required\\r\\n\* Must use try-catch\\r\\n\* If an error occurs the function should return \`error caught: \\u003cerror\\u003e\`\\r\\n\\r\\n\`\`\`\\r\\nachref@achref:~$ cat 5-main.dart\\r\\nimport 'rick\_and\_morty.dart';\\r\\n\\r\\nmain() async {\\r\\n await printRmCharacters();\\r\\n}\\r\\nachref@achref:~$\\r\\nachref@achref:~$ dart 5-main.dart\\r\\nRick Sanchez\\r\\nMorty Smith\\r\\nSummer Smith\\r\\n…\\r\\nAmish Cyborg\\r\\nAnnie\\r\\n\`\`\`\\r"

Create a file "pubspec.yaml" containing the following lines :

name: rick_and_morty

dependencies:
  http: ^1.2.0

environment:
  sdk: ">=3.0.0 <4.0.0"

Then run : `dart pub get`

Now we can use http to send requests to an online api.

Create a function `printRmCharacters()` that prints all Rick and Morty Characters.

*   You should use [Rick and Morty API](/rltoken/sw4eYN8hy3A4hwV3gOWpRg) to get the data required
*   Must use try-catch
*   If an error occurs the function should return `error caught: <error>`

achref@achref:~$ cat 5-main.dart
import 'rick_and_morty.dart';

main() async {
  await printRmCharacters();
}
achref@achref:~$
achref@achref:~$ dart 5-main.dart
Rick Sanchez
Morty Smith
Summer Smith
…
Amish Cyborg
Annie

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x03-asynchronous``
*   **File:** ``rick_and_morty.dart``
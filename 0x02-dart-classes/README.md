## Requirements

*   All your files will be interpreted/compiled on Ubuntu 20.04 LTS using `Dart 3.x.x`
*   All your files should end with a new line
*   A `README.md` file, at the root of the folder of the project, is mandatory

## Tasks

### 1.

"Create a \`User\` class:\\r\\n\\r\\n\* That contains a property called \`name\`\\r\\n\* and a method called \`showName\` that returns a string representation of User \\"Hello \`name\`\\"\\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 0-main.dart\\r\\nimport '0-class.dart';\\r\\n\\r\\nvoid main() {\\r\\n final firstPer = User();\\r\\n firstPer.name = \\"Youssef Belhadj\\";\\r\\n print(firstPer.showName());\\r\\n}\\r\\nyoussef@Holberton/Dart$ dart 0-main.dart\\r\\nHello Youssef Belhadj\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`"

Create a `User` class:

*   That contains a property called `name`
*   and a method called `showName` that returns a string representation of User "Hello `name`"

youssef@Holberton/Dart$ cat 0-main.dart
import '0-class.dart';

void main() {
  final firstPer = User();
  firstPer.name = "Youssef Belhadj";
  print(firstPer.showName());
}
youssef@Holberton/Dart$ dart  0-main.dart
Hello Youssef Belhadj
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``0-class.dart``

  

### 2.

"Create a \`User\` class:\\r\\n\\r\\n\* Properties :\\r\\n\\r\\n \* \`name\` : String\\r\\n \* \`age \` : int\\r\\n \* \`height\`: double\\r\\n\\r\\n\* And a method called \` toJson()\` that returns a map representation of the User .\\r\\n\\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 1-main.dart\\r\\nimport '1-usertojson.dart';\\r\\n\\r\\nvoid main() {\\r\\n final user = User(name: \\"Youssef\\", age: 25, height: 1.89);\\r\\n print(user.toJson());\\r\\n}\\r\\nyoussef@Holberton/Dart$dart 1-main.dart\\r\\n{name: Youssef, age: 25, height: 1.89}\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`"

Create a `User` class:

*   Properties :
    
*   `name` : String
    
*   `age` : int
    
*   `height`: double
    
*   And a method called `toJson()` that returns a map representation of the User .
    

youssef@Holberton/Dart$ cat 1-main.dart
import '1-usertojson.dart';

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}
youssef@Holberton/Dart$dart 1-main.dart
{name: Youssef, age: 25, height: 1.89}
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``1-usertojson.dart``

  

### 3.

"Create a class called \`Password\` and give it a string property called \` password\`.\\r\\n\\r\\nAdd a method to \`Password\` called\` isValid\` that returns true only \\r\\n\\r\\n\* The length of \`password\` should be between 8 and 16. \\r\\n\* \`password\` should contains Uppercase letters and lowercase letters \\r\\n\* \`password\` should contains numbers .\\r\\n\* \`toString\` :\\r\\n \* Example \`password = \\"ShouldWorkf7ne\\"\`\\r\\n \* Override the \`toString\` method of Password class to prints \` Your Password is: ShouldWorkf7ne\`. \\r\\n\\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 2-main.dart\\r\\nimport '2-password.dart';\\r\\n\\r\\nvoid main() {\\r\\n final ps = Password();\\r\\n ps.password = \\"Just3z\\";\\r\\n if (ps.isValid() == true)\\r\\n print(\\"${ps.password} is a Valid Password\\");\\r\\n else\\r\\n print(\\"${ps.password} is Not a Valid Password\\");\\r\\n print(\\"${ps.toString()}\\");\\r\\n ps.password = \\"ShouldWorkf7ne\\";\\r\\n if (ps.isValid() == true)\\r\\n print(\\"${ps.password} is a Valid Password\\");\\r\\n else\\r\\n print(\\"${ps.password} is Not a Valid Password\\");\\r\\n print(\\"${ps.toString()}\\");\\r\\n}\\r\\n\\r\\nyoussef@Holberton/Dart$dart 2-main.dart\\r\\nJust3z is Not a Valid Password\\r\\nYour Password is: Just3z\\r\\nShouldWorkf7ne is a Valid Password\\r\\nYour Password is: ShouldWorkf7ne\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`"

Create a class called `Password` and give it a string property called `password`.

Add a method to `Password` called`isValid` that returns true only

*   The length of `password` should be between 8 and 16.
*   `password` should contains Uppercase letters and lowercase letters
*   `password` should contains numbers .
*   `toString` :
*   Example `password = "ShouldWorkf7ne"`
*   Override the `toString` method of Password class to prints `Your Password is: ShouldWorkf7ne`.

youssef@Holberton/Dart$ cat 2-main.dart
import '2-password.dart';

void main() {
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
  ps.password = "ShouldWorkf7ne";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}

youssef@Holberton/Dart$dart 2-main.dart
Just3z is Not a Valid Password
Your Password is: Just3z
ShouldWorkf7ne is a Valid Password
Your Password is: ShouldWorkf7ne
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``2-password.dart``

  

### 4.

"Copy the last task and make the property \` password\` private \\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 3-main.dart\\r\\nimport '3-private\_password.dart';\\r\\n\\r\\nvoid main() {\\r\\n final ps = Password(password: \\"Passwordcode\\");\\r\\n print(ps.toString());\\r\\n print(ps.isValid());\\r\\n final ps2 = Password(password: \\"PasswordDecode3\\");\\r\\n print(ps2.toString());\\r\\n print(ps2.isValid());\\r\\n}\\r\\n\\r\\nyoussef@Holberton/Dart$dart 3-main.dart\\r\\nYour Password is: Passwordcode\\r\\nfalse\\r\\nYour Password is: PasswordDecode3\\r\\ntrue\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`\\r\\n"

Copy the last task and make the property `password` private

youssef@Holberton/Dart$ cat 3-main.dart
import '3-private_password.dart';

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}

youssef@Holberton/Dart$dart 3-main.dart
Your Password is: Passwordcode
false
Your Password is: PasswordDecode3
true
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``3-private_password.dart``

  

### 5.

"Lets make our data mutable now. Copy the code from the last task and add the \`Getters\` and \`Setters\` so we can assign and retrieve the value.\\r\\n\\r\\n\* Should use \`get\` keyword for the getter.\\r\\n\* Should use \`set\` keyword for the setter.\\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 4-main.dart\\r\\nimport '4-mutables.dart';\\r\\nvoid main() {\\r\\n final password = Password(password: \\"Passwordecode\\");\\r\\n print(password.isValid());\\r\\n print(password.toString());\\r\\n password.password = \\"Youssef4321\\";\\r\\n print(password.isValid());\\r\\n print(password.toString());\\r\\n}\\r\\nyoussef@Holberton/Dart$ dart 4-main.dart\\r\\nfalse\\r\\nYour Password is: Passwordecode\\r\\ntrue\\r\\nYour Password is: Youssef4321\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`"

Lets make our data mutable now. Copy the code from the last task and add the `Getters` and `Setters` so we can assign and retrieve the value.

*   Should use `get` keyword for the getter.
*   Should use `set` keyword for the setter.

youssef@Holberton/Dart$ cat 4-main.dart
import '4-mutables.dart';
void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());
  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}
youssef@Holberton/Dart$ dart 4-main.dart
false
Your Password is: Passwordecode
true
Your Password is: Youssef4321
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``4-mutables.dart``

  

### 6.

"Copy the code that you did in the \`1-usertojson.dart\` add property called \`id\` to the \`User\` class\\r\\n\\r\\n\* Add \`id\` to \`toJson() \` method\\r\\n\\r\\nCreate a new instance called \`fromJson\` it accept \`Map\` as parameter should return every value inside it.\\r\\n\\r\\n\* Prototype :\\r\\n\\t\* \\t\`static User fromJson(Map\\u003cdynamic, dynamic\\u003e userJson)\`\\r\\n\\r\\nCreate a method called \`toString()\` that returns a string =\\u003e User(id : \`id\` ,name: \`name\`, age: \`age\`, height: \`height\`);\\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 5-main.dart\\r\\nimport '5-json\_to\_user.dart';\\r\\n\\r\\nvoid main() {\\r\\n final djo = User(id: 1, name: \\"Djo\\", age: 25, height: 1.89);\\r\\n\\tprint(djo.toJson());\\r\\n Map map = {'id': 3, 'name': 'Youssef', 'age': 26, 'height': 1.9};\\r\\n final youssef = User.fromJson(map);\\r\\n print(djo.toString());\\r\\n print(youssef.toString());\\r\\n}\\r\\nyoussef@Holberton/Dart$ dart 5-main.dart \\r\\n{id: 1, name: Djo, age: 25, height: 1.89}\\r\\nUser(id : 1 ,name: Djo, age: 25, height: 1.89)\\r\\nUser(id : 3 ,name: Youssef, age: 26, height: 1.9)\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`\\r\\n"

Copy the code that you did in the `1-usertojson.dart` add property called `id` to the `User` class

*   Add `id` to `toJson()` method

Create a new instance called `fromJson` it accept `Map` as parameter should return every value inside it.

*   Prototype :
    *   `static User fromJson(Map<dynamic, dynamic> userJson)`

Create a method called `toString()` that returns a string => User(id : `id` ,name: `name`, age: `age`, height: `height`);

youssef@Holberton/Dart$ cat 5-main.dart
import '5-json_to_user.dart';

void main() {
  final djo = User(id: 1, name: "Djo", age: 25, height: 1.89);
    print(djo.toJson());
  Map map = {'id': 3, 'name': 'Youssef', 'age': 26, 'height': 1.9};
  final youssef = User.fromJson(map);
  print(djo.toString());
  print(youssef.toString());
}
youssef@Holberton/Dart$ dart 5-main.dart 
{id: 1, name: Djo, age: 25, height: 1.89}
User(id : 1 ,name: Djo,  age: 25, height: 1.89)
User(id : 3 ,name: Youssef,  age: 26, height: 1.9)
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``5-json_to_user.dart``

  

### 7.

"Copy the class \`Password\` from \`4-mutables.dart\` -\\u003e \`6-password.dart\`:\\r\\n\\r\\nCopy the last task and extend the \`Password\` class to \`User\`\\r\\n\\r\\n\* Create a new property in the \`User\` class called \`user\_password\` that contain the password.\\r\\n\\r\\n\* Add null check to all targets in \`6-password.dart\` and null coalescing operator if necessary.\\r\\n\\r\\n\* Call \`isValid\` method from \`Password\` class after you passed \`user\_password\` to \`Password\` class.\\r\\n\\r\\n\`\`\`\\r\\nyoussef@Holberton/Dart$ cat 6-main.dart\\r\\nimport '6-inheritance.dart';\\r\\n\\r\\nvoid main() {\\r\\n final djo = User(\\r\\n id: 1, name: \\"Djo\\", age: 25, height: 1.89, user\_password: \\"Azert23defde\\");\\r\\n print('\\u003c===========Json=========\\u003e:');\\r\\n print('\\\\n');\\r\\n print(djo.toJson());\\r\\n Map map = {\\r\\n 'id': 3,\\r\\n 'name': 'Youssef',\\r\\n 'age': 26,\\r\\n 'height': 1.9,\\r\\n 'user\_password': \\"Azert23defde\\"\\r\\n };\\r\\n final youssef = User.fromJson(map);\\r\\n print('\\\\n');\\r\\n print('\\u003c===========Test1===========\\u003e:');\\r\\n print('\\\\n');\\r\\n print(djo.toString());\\r\\n print(youssef.toString());\\r\\n print('\\\\n');\\r\\n print('\\u003c===========Test2===========\\u003e:');\\r\\n print('\\\\n');\\r\\n djo.user\_password = \\"holberton98\\";\\r\\n youssef.user\_password = \\"AZERfghn6789\\";\\r\\n print(djo.toString());\\r\\n print(youssef.toString());\\r\\n}\\r\\nyoussef@Holberton/Dart$ dart 6-main.dart\\r\\n\\u003c===========Json=========\\u003e:\\r\\n\\r\\n\\r\\n{id: 1, name: Djo, age: 25, height: 1.89}\\r\\n\\r\\n\\r\\n\\u003c===========Test1===========\\u003e:\\r\\n\\r\\n\\r\\nUser(id : 1 ,name: Djo, age: 25, height: 1.89, Password: true)\\r\\nUser(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)\\r\\n\\r\\n\\r\\n\\u003c===========Test2===========\\u003e:\\r\\n\\r\\n\\r\\nUser(id : 1 ,name: Djo, age: 25, height: 1.89, Password: false)\\r\\nUser(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)\\r\\nyoussef@Holberton/Dart$\\r\\n\`\`\`"

Copy the class `Password` from `4-mutables.dart` -> `6-password.dart`:

Copy the last task and extend the `Password` class to `User`

*   Create a new property in the `User` class called `user_password` that contain the password.
    
*   Add null check to all targets in `6-password.dart` and null coalescing operator if necessary.
    
*   Call `isValid` method from `Password` class after you passed `user_password` to `Password` class.
    

youssef@Holberton/Dart$ cat 6-main.dart
import '6-inheritance.dart';

void main() {
  final djo = User(
      id: 1, name: "Djo", age: 25, height: 1.89, user_password: "Azert23defde");
  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());
  Map map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde"
  };
  final youssef = User.fromJson(map);
  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());
  print(youssef.toString());
  print('\n');
  print('<===========Test2===========>:');
  print('\n');
  djo.user_password = "holberton98";
  youssef.user_password = "AZERfghn6789";
  print(djo.toString());
  print(youssef.toString());
}
youssef@Holberton/Dart$ dart 6-main.dart
<===========Json=========>:

{id: 1, name: Djo, age: 25, height: 1.89}

<===========Test1===========>:

User(id : 1 ,name: Djo, age: 25, height: 1.89, Password: true)
User(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)

<===========Test2===========>:

User(id : 1 ,name: Djo, age: 25, height: 1.89, Password: false)
User(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)
youssef@Holberton/Dart$

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   **Directory:** ``0x02-dart-classes``
*   **File:** ``6-inheritance.dart, 6-password.dart``
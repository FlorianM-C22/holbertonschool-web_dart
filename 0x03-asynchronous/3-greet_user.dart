import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final user = await fetchUserData();
    final decoded = json.decode(user);
    return 'Hello ${decoded['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    final credentials = await checkCredentials();
    if (credentials) {
      print('There is a user: true');
      return await greetUser();
    }
    print('There is a user: false');
    return 'Wrong credentials';
  } catch (e) {
    return 'error caught: $e';
  }
}

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final user = await fetchUserData();
    return 'Hello $user.username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    final credentials = await checkCredentials();
    if (credentials) {
      return await greetUser();
    }
    return 'Wrong credentials';
  } catch (e) {
    return 'error caught: $e';
  }
}

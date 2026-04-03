import '0-util.dart';

Future<void> usersCount() async {
  try {
    final count = await fetchUsersCount();
    print(count);
  } catch (e) {
    print('Error: $e');
  }
}

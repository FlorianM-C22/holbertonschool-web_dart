import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  try {
    final data = await fetchUserData();
    final id = json.decode(data)['id'];
    return id;
  } catch (e) {
    return 'error caught: $e';
  }
}

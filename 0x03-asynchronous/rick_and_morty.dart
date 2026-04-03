import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> printRmCharacters() async {
  try {
    final url = Uri.https('rickandmortyapi.com', '/api/character');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonReponse = jsonDecode(response.body) as Map<String, dynamic>;
      for (var character in jsonReponse['results']) {
        print(character['name']);
      }
      return 'Characters printed';
    } else {
      return 'Request failed with status : ${response.statusCode}';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

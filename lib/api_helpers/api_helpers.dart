import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jokes_app/api_models/api_models.dart';

class JokesAPIHelper {
  JokesAPIHelper._();

  static final JokesAPIHelper jokesAPIHelper = JokesAPIHelper._();

  Future<Jokes?> fetchJokesData() async {
    String baseURL =
        "https://hindi-jokes-api.onrender.com/jokes?api_key=5c01a0d89585f902ec7af10d0c60";

    http.Response res = await http.get(Uri.parse(baseURL));

    if (res.statusCode == 200) {
      Map<String, dynamic> decodedData = jsonDecode(res.body);

      Jokes jokes = Jokes.fromJSON(data: decodedData);

      print(decodedData);

      return jokes;
    }
    return null;
  }
}

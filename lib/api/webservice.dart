import 'dart:convert';

import 'package:mvvmmovie/models/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Movie>> fecthMovies(String keyWord) async {
    final url = "http://www.omdbapi.com/?s=$keyWord&apikey=38c77041";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body['Search'];

      return json.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perform resquest !");
    }
  }
}

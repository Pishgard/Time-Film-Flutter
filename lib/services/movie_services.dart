import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:time_film/model/movie.dart';

class MovieService {
  static Future getPost(String page) async {
    final response = await http.get(Uri.parse(page));
    if (response.statusCode == 200) {
      String source = const Utf8Decoder().convert(response.bodyBytes);
      // Convert to your class instance...
      var jsonResponse = json.decode(source);

      List<Movie> movies = [];
      jsonResponse['results'].forEach((item) {
        movies.add(Movie.fromJson(item));
      });

      return movies;
    } else {
      return null;
    }
  }
}

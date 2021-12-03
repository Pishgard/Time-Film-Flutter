import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:time_film/model/movie.dart';

class MovieService {
  static Future getPost(String page) async {
    final response = await http.get(Uri.parse(page));
    if (response.statusCode == 200) {
      String source = Utf8Decoder().convert(response.bodyBytes);
      // Convert to your class instance...
      var jsonResponse = json.decode(source);
      // print('jsonResponse');
      // print(jsonResponse);

      // List<Movie> posts = [];
      // responsBody['results'].forEach((item) {
      //   posts.add(item);
      // });
      // print('posts');
      // print(posts);

      List<Movie> movies = [];
      jsonResponse['results'].forEach((item) {
        movies.add(Movie.fromJson(item));
      });
      // var result = jsonResponse['results'].map((data) => Movie.fromJson(data)).toList();
      print(movies[0].image);
      return movies;
    } else {
      return null;
    }
  }
}

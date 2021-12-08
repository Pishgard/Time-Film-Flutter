class Movie {
  late int id;
  late String title;
  late String genre;
  late String image;
  late String description;
  late double rate;
  late int year_make;
  late int time;
  late List<dynamic> actors;

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    genre = json['genre'];
    image = json['image'];
    description = json['description'];
    rate = json['rate'];
    year_make = json['year_make'];
    time = json['time'];
    actors = json['actors'];
  }
}

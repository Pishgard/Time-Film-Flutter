import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:time_film/model/movie.dart';
import 'package:time_film/screens/Home/detail_movie_page.dart';

class MoviesPage extends StatefulWidget {
  static String routeName = "/home/";
  final List<Movie> movies;

  MoviesPage({required this.movies});

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF1a1a2c),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: widget.movies[_current].image,
              placeholder: (context, url) => const Image(
                  image: AssetImage("assets/images/lod.png"),
                  fit: BoxFit.cover),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      const Color(0xFF1a1a2c).withOpacity(0.9),
                      const Color(0xFF1a1a2c).withOpacity(0.9),
                      const Color(0xFF1a1a2c).withOpacity(0.9),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                    ])),
              ),
            ),
            Positioned(
              bottom: 50,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,
                items: widget.movies.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: DetailMoviePage(movie),
                                        )));
                            // DetailMoviePage(movie)));
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: const Color(0xFF1a1a2c),
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 320,
                                      margin: const EdgeInsets.only(top: 30),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: movie.image,
                                        placeholder: (context, url) =>
                                            const Image(
                                                image: AssetImage(
                                                    "assets/images/lod.png"),
                                                fit: BoxFit.cover),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      movie.title,
                                      style: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Yekan",
                                      ),
                                    ),
                                    // rating
                                    const SizedBox(height: 20),
                                    Container(
                                      child: Text(
                                        movie.genre,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey.shade600,
                                          fontFamily: "Yekan",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    AnimatedOpacity(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      opacity: _current ==
                                              widget.movies.indexOf(movie)
                                          ? 1.0
                                          : 0.0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    movie.rate.toString(),
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontFamily: "Yekan",
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.grey.shade600,
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    movie.time.toString(),
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontFamily: "Yekan",
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )));
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

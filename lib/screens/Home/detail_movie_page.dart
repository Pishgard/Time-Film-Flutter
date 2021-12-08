import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:time_film/model/movie.dart';

class DetailMoviePage extends StatefulWidget {
  static String routeName = "/detale";
  final Movie movie;

  DetailMoviePage(this.movie);
  @override
  _DetailMoviePageState createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.movie.title,
          style: const TextStyle(
            color: Color(0xFFfafafa),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: "Yekan",
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFF1a1a2c),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    widget.movie.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF1a1a2c),
                      const Color(0xFF1a1a2c).withOpacity(0.8),
                      const Color(0xFF1a1a2c).withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movie.title,
                        style: const TextStyle(
                          color: Color(0xFFfafafa),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Yekan",
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${widget.movie.year_make}، ${widget.movie.genre}، ${widget.movie.time} دقیقه",
                        style: TextStyle(
                          color: const Color(0xFFfafafa).withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            widget.movie.rate.toString(),
                            style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 17,
                              fontFamily: "Yekan",
                            ),
                          ),
                          const SizedBox(width: 5),
                          ...List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: (index < (widget.movie.rate / 2).floor())
                                  ? Colors.yellow
                                  : Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "داستان فیلم",
                style: TextStyle(
                  color: const Color(0xFFfafafa).withOpacity(0.7),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Yekan",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 10, left: 10),
              child: Text(
                widget.movie.description,
                style: TextStyle(
                  color: const Color(0xFFfafafa).withOpacity(0.7),
                  fontSize: 17,
                  fontFamily: "Yekan",
                ),
              ),
            ),
            if (widget.movie.actors.length > 0) ...[
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: Text(
                  "بازیگران",
                  style: TextStyle(
                    color: const Color(0xFFfafafa).withOpacity(0.7),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Yekan",
                  ),
                ),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.only(right: 15, top: 10, left: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.movie.actors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                  widget.movie.actors[index]['image'],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            widget.movie.actors[index]['name'],
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color(0xFFfafafa).withOpacity(0.7),
                              fontFamily: "Yekan",
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

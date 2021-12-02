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
          style: TextStyle(
            color: Color(0xFFfafafa),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: "Yekan",
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xFF1a1a2c),
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
                  image: CachedNetworkImageProvider(widget.movie.imgPoster),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF1a1a2c),
                      Color(0xFF1a1a2c).withOpacity(0.8),
                      Color(0xFF1a1a2c).withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: 15, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movie.title,
                        style: TextStyle(
                          color: Color(0xFFfafafa),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Yekan",
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "${widget.movie.year}, ${widget.movie.genre}, ${widget.movie.minute} دقیقه",
                        style: TextStyle(
                          color: Color(0xFFfafafa).withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            widget.movie.rating.toString(),
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 17,
                              fontFamily: "Yekan",
                            ),
                          ),
                          SizedBox(width: 5),
                          ...List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: (index < (widget.movie.rating / 2).floor())
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
                  color: Color(0xFFfafafa).withOpacity(0.7),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Yekan",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 10, left: 10),
              child: Text(
                widget.movie.overview,
                style: TextStyle(
                  color: Color(0xFFfafafa).withOpacity(0.7),
                  fontSize: 17,
                  fontFamily: "Yekan",
                ),
              ),
            ),
            if (widget.movie.casts.length > 0) ...[
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: Text(
                  "بازیگران",
                  style: TextStyle(
                    color: Color(0xFFfafafa).withOpacity(0.7),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Yekan",
                  ),
                ),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(right: 15, top: 10, left: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.movie.casts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 15),
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
                                  widget.movie.casts[index].image,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            widget.movie.casts[index].name,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFfafafa).withOpacity(0.7),
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

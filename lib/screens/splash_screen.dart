import 'package:flutter/material.dart';
import 'package:time_film/model/movie.dart';
import 'package:time_film/services/movie_services.dart';

import '../helper.dart';
import 'Home/movies.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash/";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final List<Movie> movies = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    getdata();

    super.initState();
  }

  getdata() async {
    if (await checkConnectionInternet()) {
      var response = await MovieService.getPost(
          "https://timefilm.pythonanywhere.com/v1/movie/");
      movies.addAll(response);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: MoviesPage(movies: movies),
                  )));
    } else {
      // ignore: deprecated_member_use
      scaffoldKey.currentState?.showSnackBar(SnackBar(
        backgroundColor: const Color(0xFF1a1a2c),
        duration: const Duration(minutes: 1),
        content: GestureDetector(
          onTap: () {
            // ignore: deprecated_member_use
            scaffoldKey.currentState?.hideCurrentSnackBar();
            getdata();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'لطفا اتصال اینترنت خود را بررسی کنید.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.wifi_lock,
                color: Colors.white,
              )
            ],
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF1a1a2c),
      body: Stack(
        // homon posion absolot
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 125,
                height: 125,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 35),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Created by",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Ali Pishgard",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

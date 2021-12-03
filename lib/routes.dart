// import 'package:floein_social_app/Screens/DisCover/DiscoverScreen.dart';
// import 'package:floein_social_app/Screens/Inbox/InboxScreen.dart';
// import 'package:floein_social_app/Screens/profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:time_film/model/movie.dart';
import 'package:time_film/screens/Home/detail_movie_page.dart';
import 'package:time_film/screens/Home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  //SplashPage.routeName: (context) => SplashPage(),
  // SplashScreen.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: SplashScreen(title: 'hi',)),
  MoviesPage.routeName: (context) =>
      Directionality(textDirection: TextDirection.rtl, child: MoviesPage()),
  // DetailMoviePage.routeName: (context) => Directionality(
  //     textDirection: TextDirection.rtl,
  //     child: DetailMoviePage(
  //       Movie(
  //         id: 1,
  //         title: "فیلم تل ماسه: بخش اول",
  //         genre: "علمی تخیلی",
  //         imgPoster:
  //             "https://m.media-amazon.com/images/M/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg",
  //         minute: 180,
  //         rating: 8.2,
  //         year: 2021,
  //         overview:
  //             "«تل ماسه: بخش اول»، فیلمی در ژانر علمی-تخیلی، درام و ماجراجویی، به کارگردانی «دنی ویلنوو»، محصول سال 2021 کشورهای کانادا و آمریکا و از تولیدات کمپانی وارنر برادرز است. در این فیلم که بر اساس داستان رمانی به همین نام، اثر «فرانک هربرت» نوشته شده، بازیگرانی چون «تیموتی شالامی»، «ربکا فرگوسن» و «زندیا» به هنرنمایی پرداخته اند. داستان فیلم که در آینده ای دور رخ می دهد، درباره فرزند خانواده ای اصیل است که محافظت از ارزشمندترین دارایی و حیاتی ترین عنصر کهکشان به او سپرده شده است؛ عنصری که زندگی انسان ها را بسیار تحت تاثیر قرار می دهد.",
  //         casts: [
  //           Cast(
  //               id: 1,
  //               name: "تیموتی شالامی",
  //               image:
  //                   "https://static.cdn.asset.filimo.com/flmt/rvw_cast_17722_1-s.jpg"),
  //           Cast(
  //               id: 2,
  //               name: "زندیا",
  //               image:
  //                   "https://static.cdn.asset.filimo.com/flmt/rvw_cast_7701_1-s.jpg"),
  //           Cast(
  //               id: 3,
  //               name: "جیسون موموآ",
  //               image:
  //                   "https://static.cdn.asset.filimo.com/flmt/rvw_cast_7393_1-s.jpg"),
  //           Cast(
  //               id: 4,
  //               name: "ربکا فرگوسن",
  //               image:
  //                   "https://static.cdn.asset.filimo.com/flmt/rvw_cast_5630_1-s.jpg"),
  //           Cast(
  //               id: 5,
  //               name: "جاش برولین",
  //               image:
  //                   "https://static.cdn.asset.filimo.com/flmt/rvw_cast_4714_1-s.jpg"),
  //           // Cast(name: "Yoson An", image: "assets/cast/yoson-an.jpg"),
  //         ],
  //       ),
  //     )),
};

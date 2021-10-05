// import 'package:floein_social_app/Screens/DisCover/DiscoverScreen.dart';
// import 'package:floein_social_app/Screens/Inbox/InboxScreen.dart';
// import 'package:floein_social_app/Screens/profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:wtiau_blog/Screens/DisCover/discover_screen.dart';
import 'package:wtiau_blog/Screens/Home/home_screen.dart';
import 'package:wtiau_blog/Screens/Inbox/inbox_screen.dart';
import 'package:wtiau_blog/Screens/Profile/profile_screen.dart';
import 'package:wtiau_blog/screens/Profile/home.dart';
import 'package:wtiau_blog/screens/Signin/splash_screen.dart';


final Map<String, WidgetBuilder> routes = {
  //SplashPage.routeName: (context) => SplashPage(),
  // SplashScreen.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: SplashScreen(title: 'hi',)),
  HomeScreen.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: HomeScreen()),
  ProfileScreen1.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: ProfileScreen1()),
  InboxScreen.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: InboxScreen()),
  Discover.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: Discover()),
};
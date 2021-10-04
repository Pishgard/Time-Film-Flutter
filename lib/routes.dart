// import 'package:floein_social_app/Screens/DisCover/DiscoverScreen.dart';
// import 'package:floein_social_app/Screens/Inbox/InboxScreen.dart';
// import 'package:floein_social_app/Screens/profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:wtiau_blog/Screens/DisCover/discover_screen.dart';
import 'package:wtiau_blog/Screens/Home/home_screen.dart';
import 'package:wtiau_blog/Screens/Inbox/inbox_screen.dart';
import 'package:wtiau_blog/Screens/Profile/profile_screen.dart';
import 'package:wtiau_blog/screens/Profile/profile_page.dart';


final Map<String, WidgetBuilder> routes = {
  //SplashPage.routeName: (context) => SplashPage(),
  HomeScreen.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: HomeScreen()),
  ProfilePage.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: ProfilePage()),
  InboxScreen.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: InboxScreen()),
  Discover.routeName: (context) => Directionality(textDirection: TextDirection.rtl, child: Discover()),
};
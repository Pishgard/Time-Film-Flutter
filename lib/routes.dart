import 'package:flutter/material.dart';
import 'package:time_film/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const Directionality(
      textDirection: TextDirection.rtl, child: SplashScreen()),
};

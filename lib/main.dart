import 'package:flutter/material.dart';
import 'package:time_film/routes.dart';
import 'package:time_film/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final MaterialColor colorCustom = MaterialColor(0xff651CE5, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'فیلم تایم',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: "Yekan",
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

Map<int, Color> color = {
  50: const Color.fromRGBO(102, 28, 229, .1),
  100: const Color.fromRGBO(102, 28, 229, .2),
  200: const Color.fromRGBO(102, 28, 229, .3),
  300: const Color.fromRGBO(102, 28, 229, .4),
  400: const Color.fromRGBO(102, 28, 229, .5),
  500: const Color.fromRGBO(102, 28, 229, .6),
  600: const Color.fromRGBO(102, 28, 229, .7),
  700: const Color.fromRGBO(102, 28, 229, .8),
  800: const Color.fromRGBO(102, 28, 229, .9),
  900: const Color.fromRGBO(102, 28, 229, 1),
};

import 'package:flutter/material.dart';
import 'package:wtiau_blog/Screens/Home/home_screen.dart';
import 'package:wtiau_blog/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final MaterialColor colorCustom = MaterialColor(0xff651CE5, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'وبلاگ تهران غرب',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: "Sans serif",
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: HomeScreen.routeName,
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

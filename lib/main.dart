import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'core/theme_app.dart';
import 'pages/movie_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: kThemeApp,
      home: MoviePage(),
    );
  }
}
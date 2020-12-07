import 'package:flutter/material.dart';
import 'package:portfolio/pages/About.dart';
import 'package:portfolio/pages/Home.dart';
import 'package:portfolio/pages/Projects.dart';

void main() {
  runApp(PortfolioAppp());
}

class PortfolioAppp extends StatelessWidget {
  const PortfolioAppp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/Project": (context) => ProjectsPage(),
        "/About": (context) => About(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/utilities/urlLaunchers.dart';

final carouselItems = [
  Stack(
    alignment: Alignment.center,
    children: [
      Image.network(
          "https://images.unsplash.com/photo-1489844097929-c8d5b91c456e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80"),
      Container(
        margin: EdgeInsets.only(bottom: 80),
        alignment: Alignment.center,
        width: 400,
        child: Text(
          "Selim Üstel Portfolio",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 65,
            fontWeight: FontWeight.w600,
            color: Colors.blueGrey.shade900,
          ),
        ),
      ),
    ],
  ),
  Image.asset('assets/myself/githubPage.png'),
  Image.asset('assets/myself/desktop.png'),
];

final carouselItemsSmall = [
  Stack(
    alignment: Alignment.center,
    children: [
      Image.network(
          "https://images.unsplash.com/photo-1489844097929-c8d5b91c456e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80"),
      Container(
        margin: EdgeInsets.only(bottom: 60),
        alignment: Alignment.center,
        width: 180,
        child: Text(
          "Selim Üstel Portfolio",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            color: Colors.blueGrey.shade900,
          ),
        ),
      ),
    ],
  ),
  GestureDetector(
    child: Image.asset(
      'assets/myself/githubSmall.png',
    ),
  ),
  Image.asset('assets/myself/desktopSmall.png'),
];

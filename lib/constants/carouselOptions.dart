import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

final options = CarouselOptions(
  enlargeCenterPage: true,
  scrollDirection: Axis.horizontal,
  autoPlayAnimationDuration: Duration(seconds: 2),
  initialPage: 0,
  enableInfiniteScroll: true,
  pauseAutoPlayOnTouch: true,
  enlargeStrategy: CenterPageEnlargeStrategy.scale,
  autoPlay: true,
  viewportFraction: 0.65,
  autoPlayInterval: Duration(seconds: 4),
  autoPlayCurve: Curves.fastOutSlowIn,
);

final optionsSmall = CarouselOptions(
  enlargeCenterPage: true,
  scrollDirection: Axis.horizontal,
  autoPlayAnimationDuration: Duration(seconds: 2),
  initialPage: 0,
  aspectRatio: 12 / 9,
  enableInfiniteScroll: true,
  autoPlay: true,
  autoPlayInterval: Duration(seconds: 4),
  autoPlayCurve: Curves.fastOutSlowIn,
);

double carouseWidth(BuildContext context) {
  if (MediaQuery.of(context).size.width > 1200) {
    return 1200;
  }
  if (MediaQuery.of(context).size.width > 1000) {
    return 1000;
  }
  if (MediaQuery.of(context).size.width > 800) {
    return 800;
  }
  if (MediaQuery.of(context).size.width > 700) {
    return 700;
  }
  if (MediaQuery.of(context).size.width > 600) {
    return 600;
  }
  return 1200;
}

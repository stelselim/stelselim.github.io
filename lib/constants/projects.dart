import 'package:flutter/material.dart';

final List<Project> projects = [
  Project(
    name: "Video Saver",
    description: 'Video Svar is a great way to save youtube videos',
    pictures: [
      'projects/phone.png',
      'projects/phone.png',
      'projects/phone.png'
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "Video Saver",
    description: 'Video Svar is a great way to save youtube videos',
    pictures: [
      'projects/phone.png',
      'projects/phone.png',
      'projects/phone.png'
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "Video Saver",
    description: 'Video Svar is a great way to save youtube videos',
    pictures: [
      'projects/phone.png',
      'projects/phone.png',
      'projects/phone.png'
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
];

class Project {
  final String name;
  final String description;
  final String playstoreUrl;
  final String date;
  final String frameworks;
  final String appstoreUrl;
  final List<String> pictures; // Should be asset Image
  Project({
    @required this.name,
    @required this.description,
    this.playstoreUrl,
    this.date,
    this.frameworks,
    this.appstoreUrl,
    @required this.pictures,
  });
}

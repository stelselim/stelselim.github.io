import 'package:flutter/material.dart';

final List<Project> projects = [
  Project(
    name: "Video Saver",
    description: 'Video Svar is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
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

  final String date;
  final String frameworks;

  final String websiteUrl;
  final String appstoreUrl;
  final String githubUrl;
  final String playstoreUrl;

  final List<String> pictures; // Should be asset Image

  Project({
    @required this.name,
    @required this.description,
    this.date,
    this.frameworks,
    this.websiteUrl,
    this.appstoreUrl,
    this.githubUrl,
    this.playstoreUrl,
    @required this.pictures,
  });
}

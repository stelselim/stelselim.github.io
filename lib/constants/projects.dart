import 'package:flutter/material.dart';

final List<Project> projects = [
  Project(
    name: "V1",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "2",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "3",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "4",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "5",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "6",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "7",
    description: 'Video Saver is a great way to save youtube videos',
    websiteUrl: "www.google.com",
    playstoreUrl: "www.google.com",
    appstoreUrl: "www.google.com",
    githubUrl: "www.google.com",
    pictures: [
      "assets/projects/phone.png",
      "assets/projects/phone.png",
      "assets/projects/phone.png",
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
    @required this.frameworks,
    @required this.date,
    @required this.pictures,
    this.websiteUrl,
    this.appstoreUrl,
    this.githubUrl,
    this.playstoreUrl,
  });
}

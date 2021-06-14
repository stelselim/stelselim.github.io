import 'package:flutter/material.dart';

final List<Project> projects = [
  Project(
      name: "Control Algorithms Server",
      description:
          "The objective of the project is that making a really simple API in order to analyze a system in transfer function model. It's so simplified to see control functions, such as step response, stepinfo, bodeplot and much more. All API's are designed to take URL Parameters as an input. Accordingly, you to use GET requests without needing anything else.",
      frameworks: "Flask and Google Cloud App Engine",
      date: "12.25.2020",
      pictures: [
        "assets/projects/ControlAlgorithms/1.png",
        "assets/projects/ControlAlgorithms/2.png",
        "assets/projects/ControlAlgorithms/3.png",
        "assets/projects/ControlAlgorithms/4.png",
        "assets/projects/ControlAlgorithms/5.png",
      ],
      githubUrl: "https://github.com/stelselim/ControlAlgorithms",
      websiteUrl:
          "https://github.com/stelselim/ControlAlgorithms#welcome-to-control-algorithms"),
  // Project(
  //     name: "ParkYerim App",
  //     description:
  //         "Users can reserve a park reservation on the map and add some additional services, such as car washing and vale service. Also, the app gives an ability to pay the amount of cost. On the business application, businesses are able to see the reservations and services.",
  //     frameworks: "Flask and Google Cloud App Engine",
  //     date: "01.10.2021",
  //     pictures: [
  //       "assets/projects/ControlAlgorithms/1.png",
  //       "assets/projects/ControlAlgorithms/2.png",
  //       "assets/projects/ControlAlgorithms/3.png",
  //       "assets/projects/ControlAlgorithms/4.png",
  //       "assets/projects/ControlAlgorithms/5.png",
  //     ],
  //     githubUrl: "https://github.com/stelselim/ControlAlgorithms",
  //     websiteUrl:
  //         "https://github.com/stelselim/ControlAlgorithms#welcome-to-control-algorithms"),
  Project(
    name: "PandaTube",
    description:
        'PandaTube is a platform where Youtube videos can be watched with selected filtered by parents for their children.',
    playstoreUrl:
        "https://play.google.com/store/apps/details?id=com.bwe.pandakids",
    appstoreUrl: "https://apps.apple.com/app/pandatube/id1520356972",
    githubUrl: null,
    pictures: [
      "assets/projects/panda/1.png",
      "assets/projects/panda/2.jpeg",
      "assets/projects/panda/3.jpeg",
      "assets/projects/panda/4.jpeg",
    ],
    date: "08.08.2020",
    frameworks: "React Native and Firebase",
  ),
  Project(
    name: "Diyet-in",
    description:
        'Diyet-in is a non-profit organization to help people for improving their nutrition knowledge. As a founder of Diyet-in, my role includes all technical work, both Front End and Back End. Also, I organize the dietitian team we have.',
    websiteUrl: "https://diyet-in.com",
    playstoreUrl:
        "https://play.google.com/store/apps/details?id=com.diyetin.beslenme&hl=en",
    appstoreUrl: "https://apps.apple.com/us/app/diyet-in/id1498230192",
    githubUrl: "https://github.com/stelselim/Diyet-in-App",
    pictures: [
      "assets/projects/diyetin/1.jpeg",
      "assets/projects/diyetin/2.jpeg",
      "assets/projects/diyetin/3.jpeg",
      "assets/projects/diyetin/4.jpeg",
      "assets/projects/diyetin/5.jpeg",
      "assets/projects/diyetin/6.jpeg",
      "assets/projects/diyetin/7.jpeg",
      "assets/projects/diyetin/8.jpeg",
    ],
    date: "02.02.2020",
    frameworks: "Flutter and Firebase",
  ),
  Project(
    name: "Change The Scenario",
    description:
        'Change The Scenario is a social media app where people can share their film scenarios. Also, the app gives an ability to watch films with people in a specific date and the time.',
    playstoreUrl:
        "https://play.google.com/store/apps/details?id=com.stel.changescenario",
    appstoreUrl:
        "https://apps.apple.com/us/app/change-the-scenario/id1538336984",
    githubUrl: "https://github.com/stelselim/ChangeTheScenario",
    pictures: [
      "assets/projects/changescenario/1.png",
      "assets/projects/changescenario/2.png",
      "assets/projects/changescenario/3.png",
      "assets/projects/changescenario/4.png",
      "assets/projects/changescenario/5.png",
    ],
    date: "11.01.2020",
    websiteUrl: null,
    frameworks: "Flutter and Firebase",
  ),
  Project(
    name: "RAF",
    description:
        'Raf is a mobile app which gives the ability for customers to buy cheaper products for a limited amount of time.',
    playstoreUrl:
        "https://play.google.com/store/apps/details?id=com.gmc.customer",
    appstoreUrl: "https://apps.apple.com/tr/app/raf/id1526349691",
    pictures: [
      "assets/projects/raf/1.jpeg",
      "assets/projects/raf/2.jpeg",
      "assets/projects/raf/3.jpeg",
      "assets/projects/raf/4.jpeg",
      "assets/projects/raf/5.jpeg"
    ],
    date: "08.17.2020",
    frameworks: "Flutter, Google Maps and Firebase",
  ),
  Project(
    name: "Count To Goal",
    description:
        'Count To Goal is a counter app which can seen how many days left or passed from your goal. Also, it has a calendar inside of the app.',
    websiteUrl: null,
    playstoreUrl: null,
    appstoreUrl: "https://apps.apple.com/us/app/count-to-goal/id1502815664",
    githubUrl: "https://github.com/stelselim/CounterBack",
    pictures: [
      "assets/projects/countToGoal/1.jpeg",
      "assets/projects/countToGoal/2.jpeg",
      "assets/projects/countToGoal/3.jpeg",
    ],
    date: "03.17.2020",
    frameworks: "Flutter and SQLite",
  ),
  Project(
    name: "Minimalist PDF",
    description:
        "Minimalist PDF Creator is a mobile app to convert images to PDF. It was developed using Flutter.",
    websiteUrl: null,
    playstoreUrl:
        "https://play.google.com/store/apps/details?id=com.stelapps.pdfmaker",
    appstoreUrl:
        "https://apps.apple.com/us/app/minimalist-pdf-creator/id1516545852",
    githubUrl: "https://github.com/stelselim/Minimalist-PDF-Creator",
    pictures: [
      "assets/projects/minimalistPdf/1.png",
      "assets/projects/minimalistPdf/2.png",
      "assets/projects/minimalistPdf/3.png",
    ],
    date: "12/02/2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "Video Saver",
    description:
        'Video Saver is a notebook that Youtube videos can be added via it\'s URL',
    githubUrl: "https://github.com/stelselim/VideoSaverApp",
    pictures: [
      "assets/projects/videosaver/1.png",
      "assets/projects/videosaver/2.png",
    ],
    date: "12.05.2020",
    frameworks: "Flutter",
  ),
  Project(
    name: "PomodoroLite",
    description:
        'PomodoroLite is a mobile app to use Pomodoro method for studying or working. Also, it gives an ability to review work time daily.',
    websiteUrl: "https://stelselim.github.io/PomodoroLite/",
    playstoreUrl:
        "https://play.google.com/store/apps/details?id=com.stel.pomodorolite",
    appstoreUrl: "https://apps.apple.com/us/app/pomodorolite/id1538122432",
    githubUrl: "https://github.com/stelselim/PomodoroLite",
    pictures: [
      "assets/projects/pomodorolite/1.png",
      "assets/projects/pomodorolite/2.png",
      "assets/projects/pomodorolite/3.png",
    ],
    date: "10.29.2020",
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

import 'package:flutter/material.dart';
import 'package:portfolio/constants/urls.dart';
import 'package:url_launcher/url_launcher.dart';

Future launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchCV(BuildContext context) async {
  if (await canLaunch("https://stelselim.github.io/cv/cv.pdf")) {
    await launch("https://stelselim.github.io/cv/cv.pdf");
  } else {
    throw 'Could not launch /cv/cv.pdf';
  }
}

void launchTwitter() async {
  const url = twitter;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchReddit() async {
  const url = reddit;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchLinkedin() async {
  const url = linkedin;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchGithub() async {
  const url = githubSite;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchAppleStore() async {
  const url = appstore;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchGooglePlay() async {
  const url = googlePlay;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

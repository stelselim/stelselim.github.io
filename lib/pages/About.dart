import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/constants/texts.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final margin = width > 800 ? 0.15 : 0;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: appBarWidget(
        context: context,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * margin),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 350,
                  child: Image.asset(
                    "assets/myself/profile.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "About",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                    textScaleFactor: 1.5,
                  ),
                ),
                Text(
                  aboutMeText,
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

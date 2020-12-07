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
                SizedBox(
                  height: 20,
                ),
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
                    "About Me",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                    textScaleFactor: 1.5,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: SelectableText(
                      aboutMeText1,
                      textScaleFactor: 2.1,
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: SelectableText(
                      aboutMeText2,
                      textScaleFactor: 2.2,
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: SelectableText(
                      aboutMeText3,
                      textScaleFactor: 2.2,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: SelectableText(
                      aboutMeText4,
                      textScaleFactor: 2.2,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

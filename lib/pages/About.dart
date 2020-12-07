import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/components/textCard.dart';
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
        padding: EdgeInsets.only(bottom: 60),
        physics: ScrollPhysics(),
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
                TextCard(
                  icon: Icons.school,
                  text: aboutMeText1,
                ),
                TextCard(
                  icon: Icons.work,
                  text: aboutMeText2,
                ),
                TextCard(
                  icon: FontAwesomeIcons.fly,
                  text: aboutMeText3,
                ),
                TextCard(
                  icon: FontAwesomeIcons.basketballBall,
                  text: aboutMeText4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/projects.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    Key key,
    @required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(10),
      child: Card(
        color: ThemeData.light().cardColor.withRed(250),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: Text(
                project.name,
                textAlign: TextAlign.center,
                textScaleFactor: 1.75,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  project.date,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: project.pictures
                  .map(
                    (e) => Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                          // color: Colors.grey.shade400,
                          ),
                      child: Image.asset(
                        e,
                        // height: 500,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 520,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                pauseAutoPlayOnTouch: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Developed with " + project.frameworks,
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.blueGrey.shade600,
                  fontFamily: GoogleFonts.archivo().fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 7.0, vertical: 10),
              child: Text(
                project.description,
                textAlign: TextAlign.left,
                textScaleFactor: 1.4,
              ),
            ),
            Divider(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Github
                project.githubUrl == null
                    ? null
                    : IconButton(
                        icon: Icon(FontAwesomeIcons.github),
                        onPressed: () {},
                      ),

                /// Website
                project.websiteUrl == null
                    ? null
                    : IconButton(
                        icon: Icon(Icons.web),
                        onPressed: () {},
                      ),

                /// App Store
                project.appstoreUrl == null
                    ? null
                    : IconButton(
                        icon: Icon(FontAwesomeIcons.appStore),
                        onPressed: () {},
                      ),

                /// Google Play
                project.playstoreUrl == null
                    ? null
                    : IconButton(
                        icon: Icon(FontAwesomeIcons.googlePlay),
                        onPressed: () {},
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}

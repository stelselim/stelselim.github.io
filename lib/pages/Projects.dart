import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/components/projectCards.dart';
import 'package:portfolio/constants/projects.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = 1;
    if (MediaQuery.of(context).size.width > 400) crossAxisCount = 2;
    if (MediaQuery.of(context).size.width > 800) crossAxisCount = 1;
    if (MediaQuery.of(context).size.width > 800) crossAxisCount = 2;
    if (MediaQuery.of(context).size.width > 1000) crossAxisCount = 3;

    return Scaffold(
      appBar: appBarWidget(
        context: context,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(
            project: projects.elementAt(index),
          );
        },
      ),
      // body: GridView.builder(
      //   itemCount: projects.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: crossAxisCount,
      //     crossAxisSpacing: 15,
      //     mainAxisSpacing: 15,
      //   ),
      //   shrinkWrap: true,
      //   itemBuilder: (context, index) {
      //     return ProjectCard(
      //       project: projects.elementAt(index),
      //     );
      //   },
      // ),
    );
  }
}

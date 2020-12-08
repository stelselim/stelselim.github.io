import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/components/projectCards.dart';
import 'package:portfolio/constants/projects.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int maxCross = 1;
    double childAspect = 0.32;
    // if (MediaQuery.of(context).size.width < 350) {
    //   maxCross = 1;
    //   childAspect = 0.32;
    // }
    // if (MediaQuery.of(context).size.width > 350) {
    //   maxCross = 1;
    //   childAspect = 0.4;
    // }
    // if (MediaQuery.of(context).size.width > 700) {
    //   maxCross = 2;
    //   childAspect = 0.55;
    // }
    // if (MediaQuery.of(context).size.width > 1050) {
    //   maxCross = 3;
    // }
    // if (MediaQuery.of(context).size.width > 1500) {
    //   maxCross = 4;
    // }

    return Scaffold(
      appBar: appBarWidget(
        context: context,
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) =>
            ProjectCard(project: projects.elementAt(index)),
      ),
    );
  }
}

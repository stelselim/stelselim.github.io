import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/components/projectCards.dart';
import 'package:portfolio/constants/projects.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Show 1
    if (MediaQuery.of(context).size.width < 700) {
      return Scaffold(
        appBar: appBarWidget(
          context: context,
        ),
        body: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: projects.length,
          itemBuilder: (context, index) => Row(
            children: [
              Expanded(
                  child: ProjectCard(
                noScroll: true,
                project: projects.elementAt(index),
              ))
            ],
          ),
        ),
      );
    }

    /// Show 2
    if (MediaQuery.of(context).size.width < 1200) {
      return Scaffold(
        appBar: appBarWidget(
          context: context,
        ),
        body: ListView(
          shrinkWrap: true,
          children: makeRows(projects, 2),
        ),
      );
    }

    /// Show 3
    if (MediaQuery.of(context).size.width < 1350) {
      return Scaffold(
        appBar: appBarWidget(
          context: context,
        ),
        body: ListView(
          shrinkWrap: true,
          children: makeRows(projects, 3),
        ),
      );
    }

    /// Show 4
    else {
      return Scaffold(
        appBar: appBarWidget(
          context: context,
        ),
        body: Center(
          child: SizedBox(
            width: 1350,
            child: ListView(
              shrinkWrap: true,
              children: makeRows(projects, 3),
            ),
          ),
        ),
      );
    }
  }
}

List<Row> makeRows(List<Project> projects, int divide) {
  if (divide == 2) {
    List<Row> result = [];
    for (int i = 0; i < projects.length; i += 2) {
      var toAdd = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(child: ProjectCard(project: projects.elementAt(i))),
        projects.length > i + 1
            ? Expanded(child: ProjectCard(project: projects.elementAt(i + 1)))
            : Expanded(child: Container())
      ]);
      result.add(toAdd);
    }
    return result;
  }
  if (divide == 3) {
    List<Row> result = [];
    for (int i = 0; i < projects.length; i += 3) {
      var toAdd = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(child: ProjectCard(project: projects.elementAt(i))),
        projects.length > i + 1
            ? Expanded(child: ProjectCard(project: projects.elementAt(i + 1)))
            : Expanded(child: Container()),
        projects.length > i + 2
            ? Expanded(child: ProjectCard(project: projects.elementAt(i + 2)))
            : Expanded(child: Container())
      ]);
      result.add(toAdd);
    }
    return result;
  } else {
    List<Row> result = [];
    for (int i = 0; i < projects.length; i += 4) {
      var toAdd = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(child: ProjectCard(project: projects.elementAt(i))),
        projects.length > i + 1
            ? Expanded(child: ProjectCard(project: projects.elementAt(i + 1)))
            : Expanded(child: Container()),
        projects.length > i + 2
            ? Expanded(child: ProjectCard(project: projects.elementAt(i + 2)))
            : Expanded(child: Container()),
        projects.length > i + 3
            ? Expanded(child: ProjectCard(project: projects.elementAt(i + 3)))
            : Expanded(child: Container())
      ]);
      result.add(toAdd);
    }
    return result;
  }
}

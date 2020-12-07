import 'package:flutter/material.dart';
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
      color: Colors.green,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                width: 0.2,
                color: Colors.red,
              )),
              child: Image.asset(
                '/projects/phone.png',
                width: 337,
                height: 667,
              ),
            ),
            Text(
              project.name,
              textAlign: TextAlign.center,
              textScaleFactor: 2,
            ),
          ],
        ),
      ),
    );
  }
}

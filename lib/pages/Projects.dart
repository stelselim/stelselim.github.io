import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/components/projectCards.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = 1;
    if (MediaQuery.of(context).size.width > 400) crossAxisCount = 2;
    if (MediaQuery.of(context).size.width > 800) crossAxisCount = 3;
    if (MediaQuery.of(context).size.width > 800) crossAxisCount = 4;
    if (MediaQuery.of(context).size.width > 1000) crossAxisCount = 5;

    return Scaffold(
      appBar: appBarWidget(
        context: context,
      ),
      body: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ProjectCard();
        },
      ),
    );
  }
}

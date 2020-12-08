import 'package:flutter/material.dart';
import 'package:portfolio/utilities/checkMobile.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    Key key,
    this.icon,
    @required this.text,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: checkMobile(context)
            ? Text(
                text,
                textScaleFactor: 1.5,
                style: TextStyle(
                  height: 1.5,
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.w400,
                ),
              )
            : ListTile(
                leading: Icon(icon, size: 35),
                title: Text(
                  text,
                  textScaleFactor: checkMobile(context) ? 1 : 1.65,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.blueGrey.shade800,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
      ),
    );
  }
}

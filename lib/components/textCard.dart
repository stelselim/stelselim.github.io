import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    Key key,
    this.icon,
    @required this.text,
  }) : super(key: key);

  final String text;
  final Icon icon;

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
        child: ListTile(
          leading: icon,
          title: Text(
            text,
            textScaleFactor: 2.1,
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

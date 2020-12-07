import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/styles/appBarStyle.dart';
import 'package:portfolio/utilities/urlLaunchers.dart';

Widget appBarWidget({BuildContext context}) {
  double width = MediaQuery.of(context).size.width;
  // String assetImage = "assets/icon.png";

  if (width < 720) {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade800,
      title: GestureDetector(
        child: Text(
          'Selim Üstel',
          style: smallAppBarHeaderTextStyle,
        ),
        onTap: () => Navigator.of(context).pushReplacementNamed("/"),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.addressCard,
            size: 20,
          ),
          onPressed: () => launchCV(context),
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.github,
            size: 20,
          ),
          onPressed: () => launchGithub(),
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.linkedinIn,
            size: 20,
          ),
          onPressed: () => launchLinkedin(),
        ),
        // IconButton(
        //   icon: Icon(
        //     FontAwesomeIcons.appStore,
        //     size: 20,
        //   ),
        //   onPressed: () => launchAppleStore(),
        // ),
        // IconButton(
        //   icon: Icon(
        //     FontAwesomeIcons.googlePlay,
        //     size: 20,
        //   ),
        //   onPressed: () => launchGooglePlay(),
        // ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: PopupMenuButton(
            child: Icon(
              Icons.dehaze,
              size: 30,
            ),
            onSelected: (value) {
              if (value == 'Home') Navigator.pushReplacementNamed(context, '/');
              if (value == 'Projects')
                Navigator.pushReplacementNamed(context, '/Project');
              if (value == 'About')
                Navigator.pushReplacementNamed(context, '/About');
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Home'),
                  ),
                  value: 'Home',
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Projects'),
                  ),
                  value: 'Projects',
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text('About'),
                  ),
                  value: 'About',
                ),
              ];
            },
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  } else {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade800,
      actionsIconTheme: IconThemeData(size: 25),
      title: Row(
        children: <Widget>[
          FlatButton(
            colorBrightness: Brightness.light,
            child: Text(
              'Home',
              style: buttonTextStyle,
            ),
            onPressed: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          FlatButton(
            colorBrightness: Brightness.light,
            child: Text(
              'Projects',
              style: buttonTextStyle,
            ),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, '/Project'),
          ),
          FlatButton(
            colorBrightness: Brightness.light,
            child: Text(
              'About',
              style: buttonTextStyle,
            ),
            onPressed: () => Navigator.pushReplacementNamed(context, '/About'),
          ),
        ],
      ),
      actions: [
        SizedBox(
          width: 5,
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.addressCard,
            size: 25,
          ),
          onPressed: () => launchCV(context),
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.linkedinIn,
            size: 25,
          ),
          onPressed: () => launchLinkedin(),
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.github,
            size: 25,
          ),
          onPressed: () => launchGithub(),
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.appStore,
            size: 25,
          ),
          onPressed: () => launchAppleStore(),
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.googlePlay,
            size: 25,
          ),
          onPressed: () => launchGooglePlay(),
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.reddit,
            size: 25,
          ),
          onPressed: () => launchReddit(),
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.twitter,
            size: 25,
          ),
          onPressed: () => launchTwitter(),
        ),
      ],
    );
  }
}

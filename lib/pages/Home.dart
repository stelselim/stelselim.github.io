import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final marginText = width > 800 ? 0.3 : 0.15;
    final imageMargin = width > 1000 ? 0.15 : 0.05;
    final portfoliofontSize = width < 600 ? 30 : 45;

    final options = CarouselOptions(
      enlargeCenterPage: true,
      autoPlayAnimationDuration: Duration(seconds: 2),
    );

    return Scaffold(
      appBar: appBarWidget(
        context: context,
      ),
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(bottom: 200),
          shrinkWrap: true,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Software Developer Portfolio",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: portfoliofontSize.toDouble(),
                  fontWeight: FontWeight.w600,
                  // color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade900.withOpacity(0.3).withAlpha(100),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: width * imageMargin,
                ),
                child: CarouselSlider(
                  items: [
                    Image.network(
                      "https://selftaught.blog/wp-content/uploads/2019/07/computer-1245714_1280.jpg",
                      width: width * 0.8,
                    ),
                    Image.network(
                      "https://dantecervantes.com/wp-content/uploads/2018/09/Captura-de-pantalla-2018-09-07-a-las-04.42.05-1024x640.png",
                      width: width * 0.8,
                    ),
                    Image.network(
                      "https://discoverpraxis.com/wp-content/uploads/screenshot_2018-03-28_2054x1306-1600x1017.png",
                      width: width * 0.8,
                    ),
                  ],
                  options: options,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: width * marginText,
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(30),
                child: SelectableText(
                  "Hello and welcome to my portfolio! I am Selim Üstel from Istanbul, Turkey. I am studying Control & Automation Engineering at Istanbul Technical University.",
                  textScaleFactor: 1.75,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ButtonBar(
              buttonAlignedDropdown: true,
              alignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed("/Project"),
                  child: Text(
                    "Projects From Me",
                    textScaleFactor: 1.5,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FlatButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed("/About"),
                  child: Text(
                    "More About Me",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

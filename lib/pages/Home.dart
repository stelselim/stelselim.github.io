import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/appBar.dart';
import 'package:portfolio/constants/carouselItems.dart';
import 'package:portfolio/constants/carouselOptions.dart';
import 'package:portfolio/constants/texts.dart';
import 'package:portfolio/utilities/checkMobile.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMobile = false;
  final controllerCarousel = CarouselController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final marginText = width > 800 ? 0.2 : 0.1;
    final imageMargin = width > 1000 ? 0.15 : 0.05;
    final portfoliofontSize = width < 600 ? 30 : 45;
    isMobile = checkMobile(context);
    return Scaffold(
      appBar: appBarWidget(
        context: context,
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: width > 1500 ? 1400 : null,
          child: Container(
            height: height,
            color: Colors.grey.shade100,
            child: ListView(
              padding: EdgeInsets.only(bottom: 100),
              shrinkWrap: true,
              children: [
                isMobile
                    ? CarouselSlider(
                        items: isMobile ? carouselItemsSmall : carouselItems,
                        carouselController: controllerCarousel,
                        options: isMobile ? optionsSmall : options,
                      )
                    : Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: carouseWidth(context),
                              child: Container(
                                child: CarouselSlider(
                                  items: isMobile
                                      ? carouselItemsSmall
                                      : carouselItems,
                                  carouselController: controllerCarousel,
                                  options: isMobile ? optionsSmall : options,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: SelectableText(
                      homeShortDescription,
                      textScaleFactor: 2.2,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                ButtonBar(
                  buttonAlignedDropdown: true,
                  alignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed("/Project"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Projects From Me",
                            textScaleFactor: 2.25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.build_circle_outlined,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 35,
                    ),
                    FlatButton(
                      onPressed: () =>
                          Navigator.of(context).pushReplacementNamed("/About"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "More About Me",
                            textScaleFactor: 2.25,
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.account_box,
                            size: 40,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

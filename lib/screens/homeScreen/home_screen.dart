import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  final int language;
  HomeScreen({this.language});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Container(
      width: sizeWidth,
      height: sizeHeight,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/photo133.jpg'), fit: BoxFit.cover)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30.0),
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DefaultTextStyle(
                    style: TextStyle(
                        color: kDefaultTextColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0),
                    child: AnimatedTextKit(
                        pause: Duration(seconds: 2),
                        repeatForever: true,
                        animatedTexts: [TyperAnimatedText('993 63 01 62 91')])),
                SizedBox(height: 5),
                Text(
                  '${diller[5][widget.language]}',
                  style: TextStyle(
                    color: kDefaultTextColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: DefaultTextStyle(
                style: TextStyle(
                    color: kDefaultTextColor,
                    wordSpacing: 20,
                    letterSpacing: 20.0,
                    fontWeight: FontWeight.w700,
                    fontSize: 60),
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    WavyAnimatedText('ILVIIR GROUP'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

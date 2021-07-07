import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ContactsScreen extends StatelessWidget {
  final int language;
  ContactsScreen({this.language});
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Container(
      height: sizeHeight,
      width: sizeWidth,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
              image: AssetImage('images/photo122.jpeg'),
              fit: BoxFit.cover)),
      child: Container(
        height: sizeHeight,
        width: sizeWidth,
        color: kDefaultTextColor.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizeHeight * 0.1,
              ),
              DefaultTextStyle(
                  style: TextStyle(
                      letterSpacing: 10,
                      color: kOrangeLikeColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                  child: AnimatedTextKit(
                      pause: const Duration(milliseconds: 3000),
                      totalRepeatCount: 1,
                      animatedTexts: [TyperAnimatedText('ILVIIR GROUP')])),
              SizedBox(
                height: 15,
              ),
              DefaultTextStyle(
                style: TextStyle(
                    wordSpacing: 10,
                    letterSpacing: 5,
                    color: kDefaultTextColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 3000),
                  animatedTexts: [TyperAnimatedText('993 63016291')],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${diller[5][language]}',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed: () {},
                child: DefaultTextStyle(
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 14,
                        color: kOrangeLikeColor,
                        fontWeight: FontWeight.w700),
                    child: AnimatedTextKit(
                        totalRepeatCount: 1,
                        pause: const Duration(milliseconds: 3000),
                        animatedTexts: [
                          TypewriterAnimatedText('ILVIIRGROUP@GMAIL.COM')
                        ])),
              ),
              SizedBox(
                height: sizeHeight * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

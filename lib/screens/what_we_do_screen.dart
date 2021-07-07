import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:ilviirgroup/models/models.dart';

import '../constants.dart';

class WhatWeDoScreen extends StatelessWidget {
  final int language;
  const WhatWeDoScreen({Key key, this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Container(
      height: sizeHeight * 0.7,
      width: sizeWidth,
      child: Row(
        children: [
          Container(
            width: sizeWidth * 0.55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                    image: AssetImage('images/photo2.jpg'), fit: BoxFit.cover)),
          ),
          Container(
            width: sizeWidth * 0.45,
            padding: EdgeInsets.fromLTRB(90, 60, 0, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                coloredContainer(),
                Text(
                  """
${diller[6][language]}
                    """,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.0,
                      color: kDefaultTextColor),
                ),
                Text(
                  """
${diller[12][language]}
                    """,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: HexColor('#717280'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

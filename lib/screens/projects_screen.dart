import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ilviirgroup/models/models.dart';

import '../constants.dart';

class ProjectsScreen extends StatelessWidget {
  final int language;
  ProjectsScreen({this.language});
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
            padding: EdgeInsets.fromLTRB(20, 60, 90, 60),
            width: sizeWidth * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: sizeHeight * 0.08,
                ),
                coloredContainer(),
                Text(
                  'Alemshop',
                  style: TextStyle(
                      color: kDefaultTextColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${diller[11][language]}',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: HexColor('#717280'),
                    fontSize: 18,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('LEARN MORE',
                        style: TextStyle(fontSize: 16, letterSpacing: 2.1)))
              ],
            ),
          ),
          Container(
            width: sizeWidth * 0.55,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('images/tayyn-3.jpg'),
                          fit: BoxFit.cover)),
                )),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/tayyn-7.jpg'),
                          fit: BoxFit.cover)),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

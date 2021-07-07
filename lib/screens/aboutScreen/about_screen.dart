import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/first.dart';
import 'components/second.dart';
import 'components/third.dart';

class AboutScreen extends StatefulWidget {
  final int language;
  const AboutScreen({Key key, this.language}) : super(key: key);
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          height: sizeHeight,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/photo11.jpg'), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Container(
              height: sizeHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    color: kDefaultTextColor.withOpacity(0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${diller[7][widget.language]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 32.0,
                            )),
                        SizedBox(
                          height: sizeHeight * 0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 100,
                            ),
                            First(language: widget.language),
                            Second(language: widget.language),
                            Third(language: widget.language),
                            SizedBox(
                              width: 100,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

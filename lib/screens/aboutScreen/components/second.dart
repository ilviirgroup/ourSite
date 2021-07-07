import 'package:flutter/material.dart';

import '../../../constants.dart';

class Second extends StatefulWidget {
  final int language;
  Second({this.language});
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController _controller;
  String i;

  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 0, end: 2).animate(_controller)
      ..addListener(() {
        setState(() {
// The state that has changed here is the animation objects value
          i = animation.value.toStringAsFixed(0);
        });
      });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        children: [
          Text(
            '$i',
            style: kInNumbersStyle1,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            '${diller[9][widget.language]}',
            style: kInNumbersStyle2,
          )
        ],
      )
    ]);
  }
}

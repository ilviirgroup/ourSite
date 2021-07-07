import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/aboutScreen/about_screen.dart';
import 'screens/contacts_screen.dart';
import 'screens/homeScreen/home_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/what_we_do_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'RedHatDisplay'),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int language = 0;
  void changeLanguage(int number) {
    setState(() {
      language = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kDefaultTextColor,
          elevation: 0,
          actions: [
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              padding: EdgeInsets.fromLTRB(5, 2, 10, 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flags(
                    number: 0,
                    changeLang: changeLanguage,
                    image: 'images/turkmen_flag.png',
                  ),
                  Flags(
                    number: 1,
                    changeLang: changeLanguage,
                    image: 'images/russian_flag.png',
                  ),
                  Flags(
                    number: 2,
                    changeLang: changeLanguage,
                    image: 'images/turkey_flag.jpg',
                  ),
                  Flags(
                    number: 3,
                    changeLang: changeLanguage,
                    image: 'images/england_flag.jpg',
                  ),
                ],
              ),
            )
          ],
          bottom: TabBar(
            labelColor: kOrangeLikeColor,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(
              letterSpacing: 2,
              fontSize: 14,
            ),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white),
            tabs: [
              Tab(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${diller[0][language]}',
                ),
              )),
              Tab(
                child: Text(
                  '${diller[1][language]}',
                ),
              ),
              Tab(
                child: Text(
                  '${diller[2][language]}',
                ),
              ),
              Tab(
                child: Text(
                  '${diller[3][language]}',
                ),
              ),
              Tab(
                child: Text(
                  '${diller[4][language]}',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(language: language),
            AboutScreen(language: language),
            WhatWeDoScreen(language: language),
            ProjectsScreen(language: language),
            ContactsScreen(language: language),
          ],
        ),
      ),
    );
  }
}

class Flags extends StatelessWidget {
  final int number;
  final Function changeLang;
  final String image;
  const Flags({Key key, this.number, this.changeLang, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(0),
      minWidth: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {
        changeLang(number);
      },
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width * 0.01,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}

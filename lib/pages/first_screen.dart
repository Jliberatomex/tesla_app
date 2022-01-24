import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:tesla_app/pages/home_screen.dart';
import 'package:tesla_app/pages/last_screen.dart';
import 'package:tesla_app/pages/second_page.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
    final _coastController= CoastController();
    PageController _pageController = PageController();
    void nextPage(page){
      _coastController.animateTo(
        beach: page,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeIn
        );
    }

    final _beaches =[
      Beach(builder: (context) => HomeScreen(nextPage)),
      Beach(builder: (context) => SecondScreen(nextPage)),
      Beach(builder: (context) => LastScreen())

    ];


    return Scaffold(
      backgroundColor: Color(0XffF0F1EF),
      body: Coast(
        scrollDirection: Axis.vertical,
        beaches: _beaches,
        allowImplicitScrolling: true,
        controller: _coastController,
        observers: [
          CrabController()
        ],
      ),
    );
  }
}
import 'dart:math';
import 'about.dart';
import 'package:autoecoleapp/intersection.dart';
import 'package:autoecoleapp/qs.dart';
import 'package:autoecoleapp/quiz.dart';
import 'quiz.dart';
import 'element.dart';
import 'package:autoecoleapp/route_generator.dart';
import 'package:flutter/material.dart' hide Element;
import 'home.dart';
import 'quizbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: DefaultTabController(
        length: 4, //how many tabs we have
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Code en poche '),
            titleSpacing: 10,

            actions: [
              Builder(builder: (context) {
                return IconButton(
                    icon: const Icon(Icons.info),
                    tooltip: 'Comment Icon',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const About()),
                      );
                    });
              }),
            ], //here we can put some esential nav button 'leading'
            backgroundColor: Colors.blue,
            elevation: 0, // for the shadow
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    //we can replace it with a img
                    gradient: LinearGradient(colors: [
              Color.fromARGB(255, 23, 145, 246),
              Colors.black87
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
            bottom: TabBar(
                isScrollable: true,
                // labelPadding: EdgeInsets.zero,
                indicatorColor: Colors.purpleAccent,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    icon: Icon(Icons.traffic_outlined),
                    // text: ('plaque'),
                    child: Text(
                      'plaque',
                      style: TextStyle(fontSize: 10),
                    ),
                    iconMargin: EdgeInsets.zero,
                  ),
                  Tab(
                    icon: Icon(Icons.question_mark_outlined),
                    child: Text(
                      'Questions',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.quiz),
                    child: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.car_crash_outlined),
                    child: Text(
                      'Intersection',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            gridbuild('home1'),
            qsbuild('home2'),
            QuizButton('home3'),
            interbuilder('home4'),
          ]),
        ),
      ),
    );
  }
}

Widget gridbuild(String text) => Scaffold(
    body: Container(
        padding: EdgeInsets.all(8),
        // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
        // width: double.infinity,
        child: Element()));

Widget qsbuild(String text) => Scaffold(
    body: Container(
        padding: EdgeInsets.all(8),
        // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),

        child: Qs()));

Widget QuizButton(String text) => Scaffold(
      body: Container(
          padding: EdgeInsets.all(8),
          // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),

          child: QuizzButton()),
    );

Widget interbuilder(String text) => Scaffold(
      body: Container(
          padding: EdgeInsets.all(8),
          // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),

          child: Intersection()),
    );

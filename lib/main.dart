import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/page1.dart';
import 'package:quiz_app/page10.dart';
import 'package:quiz_app/page2.dart';
import 'package:quiz_app/page3.dart';
import 'package:quiz_app/page4.dart';
import 'package:quiz_app/page5.dart';
import 'package:quiz_app/page6.dart';
import 'package:quiz_app/page7.dart';
import 'package:quiz_app/page8.dart';
import 'package:quiz_app/page9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/page1': (context) => const Question1(),
        '/page2': (context) => const Question2(),
        '/page3': (context) => const Question3(),
        '/page4': (context) => const Question4(),
        '/page5': (context) => const Question5(),
        '/page6': (context) => const Question6(),
        '/page7': (context) => const Question7(),
        '/page8': (context) => const Question8(),
        '/page9': (context) => const Question9(),
        '/page10': (context) => const Question10(),
        '/page11': (context) => const AnswersPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Let\'s quiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

final scoreManager = ScoreManager();

class ScoreManager {
  int points = 0;

  void incrementPoints() {
    points++;
  }

  int getTotalPoints() {
    return points;
  }
}

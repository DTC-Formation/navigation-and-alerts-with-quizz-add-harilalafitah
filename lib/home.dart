import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz app',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Image.network(
                'https://st4.depositphotos.com/4320021/22199/v/450/depositphotos_221993346-stock-illustration-quiz-logo-with-speech-bubble.jpg',
                fit: BoxFit.cover,
                width: size.width,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Click the button to begin!',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(4),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/page1');
                setState(() {
                  scoreManager.points = 0;
                });
              },
              child: const Text(
                'Let\'s quiz!',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

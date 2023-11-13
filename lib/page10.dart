import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question10 extends StatefulWidget {
  const Question10({super.key});

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {
  int? _selectedValue;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              width: size.width,
              color: Colors.deepPurple,
              child: const Text(
                'Question 10',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Text(
                'Which open-source web browser is based on the Chromium project?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                Card(
                  child: RadioListTile<int>(
                    title: const Text(
                      'a. Mozilla Firefox',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: RadioListTile<int>(
                    title: const Text(
                      'b. Microsoft Edge',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: RadioListTile<int>(
                    title: const Text(
                      'c. Google Chrome',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    value: 3,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: RadioListTile<int>(
                    title: const Text(
                      'd. Safari',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    value: 4,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    elevation: const MaterialStatePropertyAll(4),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_selectedValue == 3) scoreManager.incrementPoints();
                      final snackBar = SnackBar(
                        duration: const Duration(seconds: 5),
                        dismissDirection: DismissDirection.startToEnd,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor:
                            (_selectedValue == 3) ? Colors.green : Colors.red,
                        content: (_selectedValue == 3)
                            ? const Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Your right',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              )
                            : const Row(
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Wrong answer!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                        action: SnackBarAction(
                          backgroundColor: Colors.black54,
                          textColor: Colors.white,
                          label: 'Action',
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('You\'re done!'),
                                content: Text(
                                    'Your score is: ${scoreManager.getTotalPoints()}/10 \n Would you like to see the answers?'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.of(context)
                                        .popUntil(ModalRoute.withName('/')),
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pushNamed(context, '/page11'),
                                    child: const Text('Yes'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Image.network(
                'https://d2u4q3iydaupsp.cloudfront.net/t2yC2AQQRyS7I5vbfwEEganeNAnYq6CKzhlIXmkVaqlbVW0ltxLzDXyg5o9F6wVGhCCNX7t1IbSsIUMf2TMq1PwI2vlA2djD5mOaYm763YEFVdC4615t61snd7FHjDNc',
                fit: BoxFit.contain,
                width: size.width,
                height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

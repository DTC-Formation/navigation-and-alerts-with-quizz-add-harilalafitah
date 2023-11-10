import 'package:flutter/material.dart';

class AnswersPage extends StatefulWidget {
  const AnswersPage({super.key});

  @override
  State<AnswersPage> createState() => _AnswersPageState();
}

class _AnswersPageState extends State<AnswersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Answers page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                child: Text(
                  'Here are the answers for the last quiz.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                  ),
                ),
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 50,
                color: Colors.indigo,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          '1. What is HTML?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'b. A markup language',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Text(
                          '2. Which is the most commonly used operating system on personal computers?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'a. Windows',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '3. What wireless technology is used to connect Bluetooth devices?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'd. Bluetooth',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '4. Which programming language is primarily used for Android app development?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'a. Java',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '5. What technology is the foundation of blockchain and cryptocurrencies like Bitcoin?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'c. Cryptography',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '6. What is the primary markup language used for creating dynamic web pages?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'a. HTML',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '7. What is the term used to describe malicious software that spreads by pretending to be legitimate software?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'a. Virus',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '8. Which company is known for products like the iPhone, iPad, and Mac?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'c. Apple',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '9. What technology allows computers to store data permanently on magnetic disks?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'd. HDD (hard disk drive)',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          '10. Which open-source web browser is based on the Chromium project?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      RadioListTile<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.green,
                        title: const Text(
                          'c. Google Chrome',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        value: 1,
                        groupValue: 1,
                        onChanged: (int? value) {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).popUntil(ModalRoute.withName('/'));
                    },
                    icon: const Icon(Icons.home),
                    label: const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

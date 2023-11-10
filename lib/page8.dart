import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question8 extends StatefulWidget {
  const Question8({super.key});

  @override
  State<Question8> createState() => _Question8State();
}

class _Question8State extends State<Question8> {
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
                'Question 8',
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
                'Which company is known for products like the iPhone, iPad, and Mac?',
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
                      'a. Google',
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
                      'b. Microsoft',
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
                      'c. Apple',
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
                      'd. Facebook',
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
                    if (_selectedValue == 3) scoreManager.incrementPoints();
                    Navigator.of(context).pushNamed('/page9');
                    final snackBar = SnackBar(
                      duration: const Duration(seconds: 2),
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
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text(
                    'Next',
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
                'https://t4.ftcdn.net/jpg/05/76/65/33/360_F_576653378_RUt3MA4EJCWulpHM2n5LZmrQvFdNuOLf.jpg',
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

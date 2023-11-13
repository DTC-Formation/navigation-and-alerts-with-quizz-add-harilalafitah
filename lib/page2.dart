import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
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
                'Question 2',
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
                'Which is the most commonly used operating system on personal computers?',
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
                      'a. Windows',
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
                      'b. macOS',
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
                      'c. Linux',
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
                      'd. Android',
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
                // ElevatedButton(
                //   style: ButtonStyle(
                //     shape: MaterialStatePropertyAll(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //     ),
                //     elevation: const MaterialStatePropertyAll(4),
                //   ),
                //   onPressed: () {
                //     Navigator.of(context).pop();
                //   },
                //   child: const Text(
                //     'Previous',
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.normal,
                //     ),
                //   ),
                // ),
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
                    if (_selectedValue == 1) scoreManager.incrementPoints();
                    Navigator.of(context).pushNamed('/page3');
                    final snackBar = SnackBar(
                      duration: const Duration(seconds: 2),
                      dismissDirection: DismissDirection.startToEnd,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor:
                          (_selectedValue == 1) ? Colors.green : Colors.red,
                      content: (_selectedValue == 1)
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
                'https://t4.ftcdn.net/jpg/04/38/53/81/360_F_438538185_JeeXoZwBRkoPYsUWuSoKhlM3QSijZ2vi.jpg',
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

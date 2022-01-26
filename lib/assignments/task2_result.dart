import 'package:flutter/material.dart';

class Task2Result extends StatefulWidget {
  const Task2Result({Key? key}) : super(key: key);
  static const String id = 'task2_result';
  @override
  _Task2ResultState createState() => _Task2ResultState();
}

class _Task2ResultState extends State<Task2Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                  children: const [
                    Image(image: AssetImage('assets/images/img_10.png')),
                    SizedBox(height: 5),
                    Expanded(
                        child: Image(image: AssetImage('assets/images/img_11.png'))
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);
  static const String id = 'task 2';
  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: PageView(
          controller: _controller,
          children: [
            Container(color: Colors.white),
            Container(color: Colors.redAccent),
            Container(color: Colors.yellowAccent),
            Container(color: Colors.green),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_outlined), label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            setState(() {
              _currentIndex = index;
              _controller.jumpToPage(index);
            });
          });
        },
      ),
    );
  }
}

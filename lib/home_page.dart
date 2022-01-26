import 'package:flutter/material.dart';
import 'package:widgets_intermediate/assignments/task1.dart';
import 'package:widgets_intermediate/assignments/task1_result.dart';
import 'package:widgets_intermediate/assignments/task2.dart';
import 'package:widgets_intermediate/assignments/task2_result.dart';
import 'package:widgets_intermediate/concepts/1.Alert_Dialogue.dart';
import 'package:widgets_intermediate/concepts/2.Drawer.dart';
import 'package:widgets_intermediate/concepts/3.Drawer.dart';

import 'concepts/10.PageView.dart';
import 'concepts/11.PageView.dart';
import 'concepts/12.BottomNavigationBar.dart';
import 'concepts/13.TabBarView.dart';
import 'concepts/4.SingleChildScrollView.dart';
import 'concepts/5.ListView_Vertical.dart';
import 'concepts/6.ListView_Horizontal.dart';
import 'concepts/7.ListViews.dart';
import 'concepts/8.GridView.dart';
import 'concepts/9.GridView.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String,String> concepts = {AlertDialogue.id : 'ALERT DIALOG',
    DrawerPage.id : 'DRAWER',
    Drawer2.id : 'DRAWER',
    SinglChildScrollViewWidget.id : 'SINGLE CHILD SCROLL VIEW',
    ListViewVertical.id : 'VERTICAL LIST VIEW',
    ListViewHorizontal.id : 'HORIZONTAL LIST VIEW',
    ListViews.id : 'HORIZONTAL + VERTICAL LIST VIEW',
    GridViews.id : 'GRID VIEW',
    GridViews2.id : 'GRID VIEW',
    PageViews.id : 'PAGE VIEW',
    PageViews2.id : 'PAGE VIEW',
    BottomNavigationBars.id : 'BOTTOM NAVIGATION BAR',
    TabBars.id : 'TAB BAR',
  };
  Map<String,String> tasks = {
    TelegramLikeUI.id : 'MESSENGER',
    Task1Result.id : 'RESULT',
    Task2.id : 'BOTTOM NAVIGATION BAR',
    Task2Result.id : 'RESULT',
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text('Widgets Intermediate'),
          centerTitle: true,
          bottom: const TabBar(
              indicatorColor: Colors.cyan,
              labelColor: Colors.cyan,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.menu_book, color: Colors.cyan), text: 'Concepts', height: 50),
                Tab(icon: Icon(Icons.task, color: Colors.cyan), text: 'Tasks', height: 50),
              ]
          ),
        ),
        body: TabBarView(
          children:  [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: concepts.length,
                itemBuilder: (context, index){
                  return _card(index+1, concepts.values.toList()[index], concepts.keys.toList()[index]);
                  },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index){
                  return _card(index+1, tasks.values.toList()[index], tasks.keys.toList()[index]);
                  },
              ),
            ),
          ]
        ),
      ),
    );
  }

  Widget _card(int number, String name, String id){
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: MaterialButton(
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 10,
          minLeadingWidth: 10,
          leading: Text(number.toString(), style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          title: Center(child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5), textAlign: TextAlign.center)),
          selectedColor: Colors.blueGrey,
        ),
        onPressed: (){Navigator.of(context).pushNamed(id);},
      ),
      elevation: 10.0,
    );
  }
}

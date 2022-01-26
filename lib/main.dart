import 'package:flutter/material.dart';
import 'package:widgets_intermediate/assignments/task1.dart';
import 'package:widgets_intermediate/assignments/task1_result.dart';
import 'package:widgets_intermediate/assignments/task2.dart';
import 'package:widgets_intermediate/assignments/task2_result.dart';
import 'package:widgets_intermediate/concepts/1.Alert_Dialogue.dart';
import 'package:widgets_intermediate/concepts/2.Drawer.dart';
import 'package:widgets_intermediate/concepts/3.Drawer.dart';
import 'concepts/4.SingleChildScrollView.dart';
import 'concepts/5.ListView_Vertical.dart';
import 'concepts/6.ListView_Horizontal.dart';
import 'concepts/7.ListViews.dart';
import 'concepts/8.GridView.dart';
import 'concepts/9.GridView.dart';
import 'concepts/10.PageView.dart';
import 'concepts/11.PageView.dart';
import 'concepts/12.BottomNavigationBar.dart';
import 'concepts/13.TabBarView.dart';
import 'package:widgets_intermediate/home_page.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';


void main() => runApp(const WidgetsIntermediate());

class WidgetsIntermediate extends StatelessWidget {
  const WidgetsIntermediate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        AlertDialogue.id: (context) => const AlertDialogue(),
        DrawerPage.id: (context) => const DrawerPage(),
        Drawer2.id: (context) => const Drawer2(),
        SinglChildScrollViewWidget.id: (context) => const SinglChildScrollViewWidget(),
        ListViewVertical.id: (context) => const ListViewVertical(),
        ListViewHorizontal.id: (context) => const ListViewHorizontal(),
        ListViews.id: (context) => const ListViews(),
        GridViews.id: (context) => const GridViews(),
        GridViews2.id: (context) => const GridViews2(),
        PageViews.id: (context) => const PageViews(),
        PageViews2.id: (context) => const PageViews2(),
        BottomNavigationBars.id: (context) => const BottomNavigationBars(),
        TabBars.id: (context) => const TabBars(),
        TelegramLikeUI.id: (context) => const TelegramLikeUI(),
        Task1Result.id: (context) => const Task1Result(),
        Task2.id: (context) => const Task2(),
        Task2Result.id: (context) => const Task2Result(),
        SourceCode.id: (context) => const SourceCode(carbon: '', url: '')
      },
    );
  }
}

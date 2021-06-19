import 'package:flutter/material.dart';
import 'package:flutter_appdf/modules/archived_taskes/archived_task_screen.dart';
import 'package:flutter_appdf/modules/don_taskes/don_task_screen.dart';
import 'package:flutter_appdf/modules/taskes/new_task_screen.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int curerntindex = 0;
  List<String> titel = [
    'New Task',
    'Done',
    'Archive',
  ];
  List<Widget> set_screen = [
    NewTaskScreen(),
    DonTaskScreen(),
    ArchivedTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titel[curerntindex],
        ),
      ),
      body: set_screen[curerntindex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: curerntindex,
        onTap: (index) {
          setState(() {
            curerntindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'New Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archive',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homeTab.dart';
import 'roomsTab.dart';
import 'automationTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: const Color(0xFF000000).withOpacity(1),
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.fullscreen_exit), title: Text('Rooms')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), title: Text('Automation'))
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            if (index == 0) {
              return HomeTab();
            } else if (index == 1) {
              return RoomsTab();
            } else {
              return AutomationTab();
            }
          },
        );
      },
    );
  }
}

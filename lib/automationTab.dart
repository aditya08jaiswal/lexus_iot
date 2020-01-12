import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AutomationTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AutomationTab();
}

class _AutomationTab extends State<AutomationTab> {
  static const String id = 'automationtab';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0x00000000),
        trailing: GestureDetector(
          onTap: () {
            debugPrint('add icon tapped');
          },
          child: Icon(
            CupertinoIcons.add,
            color: CupertinoColors.black,
          ),
        ),
      ),
      child: Center(
          child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/home.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Center(
            child: Text(
              'Automation',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
          )
        ],
      )),
    );
  }
}
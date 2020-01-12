import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeTab();
}

class _HomeTab extends State<HomeTab> {
  static const String id = 'hometab';

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
          child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/home.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              'Home',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
          )
        ],
      )),
    );
  }
}
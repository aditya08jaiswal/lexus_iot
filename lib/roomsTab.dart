import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'iotDeviceWidget.dart';

class RoomsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RoomsTab();
}

class _RoomsTab extends State<RoomsTab> {
  static const String id = 'roomstab';

  int _count = 1;

  void _addNewIOTDevice() {
    setState(() {
      _count = _count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _iotDevice = new List.generate(_count, (int i) => new IOTDevice());

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0x00000000),
        trailing: GestureDetector(
          onTap: () {
            _addNewIOTDevice();
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
              // color: Colors.black,
              image: DecorationImage(
                image: AssetImage("images/home.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 3, // 30%
                child: Container(
                  child: Center(
                    child: Text(
                      'Living Room',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .navLargeTitleTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7, // 70%
                child: Container(
                  child: Center(
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: _iotDevice,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
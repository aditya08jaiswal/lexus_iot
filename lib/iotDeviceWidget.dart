import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOTDevice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _IOTDevice();
}

class _IOTDevice extends State<IOTDevice> {
  bool _switchValue = false;
  String _iotDeviceName = 'Add name'; 

changeText() {
    setState(() {
     _iotDeviceName = 'Custom'; 
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFFFFFF).withOpacity(0.1),
        width: 80.0,
        height: 80.0,
        padding: EdgeInsets.all(6.0),
        child: Column(children: <Widget>[
          Icon(
            CupertinoIcons.bell_solid,
            size: 48.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
          ),
          Text('$_iotDeviceName', style: TextStyle(fontSize: 24)),
          CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (bool value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
      ]));
  }
}
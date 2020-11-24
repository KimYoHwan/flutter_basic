import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CupertinoPageTest extends StatefulWidget {
  @override
  _CupertinoPageTestState createState() => _CupertinoPageTestState();
}

class _CupertinoPageTestState extends State<CupertinoPageTest> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Center(child:Text('쿠퍼티노 UI'))),
      body: Column(
        children: <Widget>[
          CupertinoButton(
            onPressed: () {  },
            child: Text('쿠퍼티노'),
          ),
          CupertinoSwitch(
            value: _switch,
            onChanged: (bool value){
              setState(() {
                _switch = value;
              });
            },
          ),
          RaisedButton(
            onPressed: () {  },
            child: Text('머티리얼 버튼'),
          ),
          Switch(
            value: _switch, onChanged: (bool value) { setState(() {
              _switch = value;
            }); },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/cupertino_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: CupertinoPageTest(),
      home: HelloPage('무형 문화 연구원', '무형 문화 연구원에 오신것을 환영합니다.'),
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;
  final String content;

  HelloPage(this.title, this.content);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = '무형 문화 연구원에 오신 것을 환영합니다.';
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_count',
              style: TextStyle(fontSize: 20),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPageTest()));
              },
              child: Text('화면 이동'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: _changeMessage,
      ),
    );
  }

 void _changeMessage() {
    setState(() {
      _message = '무형 문화 연구원 시스템실 김요환님 . ';
      _count = _count+1;
    });
 }
}

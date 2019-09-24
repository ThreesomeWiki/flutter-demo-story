import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "hellowworld",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: AppBar(
          title: new Center(
            child: Text(
              '首页',
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

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
  String activeNav = '首页';
  @override
  Widget build(BuildContext context) {
    const navText = ['首页', '分类', '排行', '书架'];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: AppBar(
          backgroundColor: Color(0XFFF5F5F5),
          elevation: 0,
          title: Container(
            height: 44,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '纵横中文网',
                  style: TextStyle(
                    color: Color(0XFF666666),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0XFF333333),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: navText
                    .map(
                      (v) => Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: activeNav == v
                              ? Color(0xff454545)
                              : Color(0xff333333),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              v,
                              style: TextStyle(
                                  color: activeNav == v
                                      ? Color(0xfff2f2f2)
                                      : Color(0Xffa1a1a1)),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './components/Navs.dart' as Navs;
import './components/Header.dart' as Header;
import './view/home/Home.dart' as Home;
import './view/category/Category.dart' as Category;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String activeNav = '分类';
  // 修改NAV
  changeNavHandle(v) {
    setState(() {
      activeNav = v;
    });
  }

  // 渲染
  render() {
    if (activeNav == '首页') {
      return Home.Home();
    } else if (activeNav == '分类') {
      return Category.Category();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: AppBar(
            backgroundColor: Color(0XFFF5F5F5),
            elevation: 0,
            title: Header.Header(
              title: '纵横中文网',
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Navs.Navs(
              activeNav: activeNav,
              onChange: changeNavHandle,
            ),
            render(),
          ],
        ),
      ),
    );
  }
}

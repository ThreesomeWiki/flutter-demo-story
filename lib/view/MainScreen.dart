import 'package:flutter/material.dart';
import '../components/Navs.dart' as Navs;
import '../components/Header.dart' as Header;
import './home/Home.dart' as Home;
import './category/Category.dart' as Category;
import './rank/Rank.dart' as Rank;
import './shelf/Shelf.dart' as Shelf;

class MainScreen extends StatefulWidget {
  static String pageName = '主页';
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  String activeNav = '书架';
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
    } else if (activeNav == '排行') {
      return Rank.Rank();
    } else if (activeNav == '书架') {
      return Shelf.Shelf();
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

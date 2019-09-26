import 'package:flutter/material.dart';
import './components//HomeSwiper.dart' as HomeSwiper;
import './components/HomeCategory.dart' as HomeCategory;
import './components/HomeRecommend.dart' as HomeRecommend;

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  static String pageName = '主页';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HomeSwiper.HomeSwiper(),
        HomeCategory.HomeCategory(),
        HomeRecommend.HomeRecommend(),
      ],
    );
  }
}

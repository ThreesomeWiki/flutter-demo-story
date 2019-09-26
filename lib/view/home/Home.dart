import 'package:flutter/material.dart';
import './components//HomeSwiper.dart' as HomeSwiper;
import './components/HomeCategory.dart' as HomeCategory;
import './components/HomeRecommend.dart' as HomeRecommend;
import './components/HomeManRead.dart' as HomeManRead;
import './components/HomeWomanRead.dart' as HomeWomanRead;

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
        // swiper
        HomeSwiper.HomeSwiper(),
        // 分类
        HomeCategory.HomeCategory(),
        // 推荐列表
        HomeRecommend.HomeRecommend(),
        // banner
        Image.network(
          'https://static.zongheng.com/upload/recommend/current/2019/1568628679162.jpg',
          width: 360,
          height: 81.6,
        ),
        // 男生必读
        HomeManRead.HomeManRead(),
        // 女生爱看
        HomeWomanRead.HomeWomanRead(),
      ],
    );
  }
}

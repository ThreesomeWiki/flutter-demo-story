import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeCard.dart' as HomeCard;

class HomeWomanRead extends StatefulWidget {
  @override
  _HomeWomanRead createState() => _HomeWomanRead();
}

class _HomeWomanRead extends State<HomeWomanRead> {
  // 渲染列表
  renderList() {
    List lists = [
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/7b/e4/7be433d4398aa88f685be17510e53809.jpeg',
        'title': '炮灰来袭：嫡女，黑化吧！',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/5c/d6/5cd66aabdbdb5ef38f8c97b0dd6233c9.jpeg',
        'title': '亿万首席的心肝甜妻',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/f6/cf/f6cf610f107fa108b060436748ef5f9c.jpeg',
        'title': '厨娘当道：将军，请接招！',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/f4/64/f464e3b755226add4d04e07d4093950e.jpeg',
        'title': '头条约婚：大牌萌妻超级甜',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/64/70/6470473a36fae00faa246bd29ce26341.jpeg',
        'title': '盛世枭宠：腹黑娇妻你别逃',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/c9/79/c97995ac522a40c6736dc3110f2ea45c.jpeg',
        'title': '异能重生：种田养夫样样行',
      },
    ];
    List<Widget> ret = [];
    lists.asMap().forEach((k, v) => {
          ret.add(
            HomeCard.HomeCard(k: k, v: v),
          )
        });
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return HomeList.HomeList(
      slotView: Container(
        width: 324,
        margin: EdgeInsets.only(top: 18),
        child: Wrap(
          children: renderList(),
        ),
      ),
      title: '女生爱看',
    );
  }
}

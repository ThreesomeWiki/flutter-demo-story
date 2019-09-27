import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeItem.dart' as HomeItem;
import './HomeItemRow.dart' as HomeItemRow;

class HomeYule extends StatefulWidget {
  static String pageName = '娱乐';
  @override
  _HomeYule createState() => _HomeYule();
}

class _HomeYule extends State<HomeYule> {
  // 渲染列表
  renderList() {
    const list = [
      {
        'title': '[异世大陆]四世至尊：追求无悔人生',
      },
      {
        'title': '[都市生活]强者来临：走向人生巅峰',
      },
      {
        'title': '[都市生活]欢乐悠闲生活：至尊神农',
      },
      {
        'title': '[都市生活]花都超级神医：人生巅峰',
      },
    ];
    return list.map((v) => HomeItemRow.HomeItemRow(item: v));
  }

  @override
  Widget build(BuildContext context) {
    const item = {
      'image':
          'https://static.zongheng.com/upload/s_image/cover/d2/10/d210b92a72ca13ed0a6ecf7d06ba748c.jpeg',
      'title': '终极教师',
      'content': '方炎原是太极世家传人，因为不堪忍受一个野蛮女人的暴力欺负而翘家逃跑，弃武从文成为一所私立学校的高中语文老师。',
      'user': '柳下挥',
      'labs': ['都市生活', '完结'],
    };
    return HomeList.HomeList(
      title: '都市娱乐',
      sanjiao: true,
      slotView: Column(
        children: <Widget>[
          HomeItem.HomeItem(item: item),
          ...renderList(),
        ],
      ),
    );
  }
}

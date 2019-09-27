import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeItem.dart' as HomeItem;
import './HomeItemRow.dart' as HomeItemRow;

class HomeHot extends StatefulWidget {
  static String pageName = '热门作品';
  @override
  _HomeHot createState() => _HomeHot();
}

class _HomeHot extends State<HomeHot> {
  // 渲染列表
  renderList() {
    const list = [
      {
        'title': '[都市生活]护花兵王：花都至强兵王',
      },
      {
        'title': '[新派武侠]血灵王座：美丽幻想世界',
      },
      {
        'title': '[架空历史]大明正统：入庙堂出边疆',
      },
      {
        'title': '[都市重生]玄灵仙尊重生：生活无奈',
      },
    ];
    return list.map((v) => HomeItemRow.HomeItemRow(item: v));
  }

  @override
  Widget build(BuildContext context) {
    const item = {
      'image':
          'https://static.zongheng.com/upload/s_image/cover/3f/9d/3f9dc39e1d9084ed06457df1b154e677.jpeg',
      'title': '铸春秋',
      'content': '大离皇朝一夜覆灭，三大家族统治天下！江湖堪堪太平十年，一则遗孤传说开始流传！',
      'user': '秋风奈何',
      'labs': ['传统武侠', '连载'],
    };
    return HomeList.HomeList(
      title: '热门作品',
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

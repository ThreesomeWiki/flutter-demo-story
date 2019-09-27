import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeItem.dart' as HomeItem;
import './HomeItemRow.dart' as HomeItemRow;

class HomeWuxia extends StatefulWidget {
  static String pageName = '武侠';
  @override
  _HomeWuxia createState() => _HomeWuxia();
}

class _HomeWuxia extends State<HomeWuxia> {
  // 渲染列表
  renderList() {
    const list = [
      {
        'title': '[都市生活]冒牌恶魔：被遗忘的世界',
      },
      {
        'title': '[东方玄幻]无敌剑魂：帝王重生归来',
      },
      {
        'title': '[东方玄幻]求仰不愧天：求俯不怍地',
      },
      {
        'title': '[古典仙侠]修仙如渡河：勇气很重要',
      },
    ];
    return list.map((v) => HomeItemRow.HomeItemRow(item: v));
  }

  @override
  Widget build(BuildContext context) {
    const item = {
      'image':
          'https://static.zongheng.com/upload/s_image/cover/shucheng/16/82316006.jpg',
      'title': '最强特种兵之龙医',
      'content': '一柄龙鳞匕，护我华夏国土安；一把手术刀，保我将士故土归。',
      'user': '七橙_红薯网_6',
      'labs': ['穿越历史', '完结'],
    };
    return HomeList.HomeList(
      title: '玄幻仙侠',
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

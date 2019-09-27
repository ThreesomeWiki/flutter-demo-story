import 'package:flutter/material.dart';
import './components/Item.dart' as Item;

class Category extends StatefulWidget {
  @override
  _Category createState() => _Category();
}

class _Category extends State<Category> {
  static String pageName = '分类';

  @override
  Widget build(BuildContext context) {
    List list = [
      {
        'title': "奇幻玄幻",
        'list': [
          '西方奇幻',
          '东方玄幻',
          '异世大陆',
          '转世重生',
          '异术超能',
          '上古神话',
          '魔法校园',
          '王朝争霸',
          '吸血传奇',
          '变身情缘',
        ]
      },
      {
        'title': "都市娱乐",
        'list': [
          '职场商战',
          '江湖情仇',
          '都市重生',
          '都市异能',
          '都市生活',
          '青春校园',
        ]
      },
      {
        'title': "武侠仙侠",
        'list': [
          '古典仙侠',
          '现代修真',
          '奇幻修真',
          '新派武侠',
          '传统武侠',
        ]
      },
      {
        'title': "都市言情",
        'list': [
          '白领职场',
          '青春校园',
          '婚恋家庭',
          '都市重生',
          '豪门总裁',
        ]
      },
      {
        'title': "历史军事",
        'list': [
          '穿越历史',
          '架空历史',
          '历史传记',
        ]
      },
    ];
    return Column(
      children: <Widget>[
        ...list.map((v) {
          return Item.Item(
            title: v['title'],
            list: v['list'],
          );
        }).toList()
      ],
    );
  }
}

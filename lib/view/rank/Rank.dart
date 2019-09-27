import 'package:flutter/material.dart';
import './components/Item.dart' as Item;

class Rank extends StatefulWidget {
  @override
  _Rank createState() => _Rank();
}

class _Rank extends State<Rank> {
  static String pageName = '排行';

  changeCategory() {}
  @override
  Widget build(BuildContext context) {
    List<Map> baiduList = [
      {
        'isTitle': true,
        'title': '百度小说月票榜',
        'count': '查看榜单',
      },
      {
        'rank': 1,
        'title': '剑来',
        'color': Colors.red,
        'count': 23663,
      },
      {
        'rank': 2,
        'title': '长宁将军',
        'color': Color(0xffe28d29),
        'count': 23663,
      },
      {
        'rank': 3,
        'title': '医流武神',
        'color': Color(0xff9fc575),
        'count': 23663,
      },
      {
        'rank': 4,
        'title': '帝道独尊',
        'color': Color(0xff8f8f8f),
        'count': 23663,
      },
      {
        'rank': 5,
        'title': '万道仙师',
        'color': Color(0xff8f8f8f),
        'count': 23663,
      }
    ];
    List<Map> manList = [
      {
        'isTitle': true,
        'title': '男生热门榜',
        'count': '查看榜单',
      },
      {
        'rank': 1,
        'title': '点道为止',
        'color': Colors.red,
        'count': 23663,
      },
      {
        'rank': 2,
        'title': '妙医鸿途',
        'color': Color(0xffe28d29),
        'count': 23663,
      },
      {
        'rank': 3,
        'title': '祭炼山河',
        'color': Color(0xff9fc575),
        'count': 23663,
      },
      {
        'rank': 4,
        'title': '圣武星辰',
        'color': Color(0xff8f8f8f),
        'count': 23663,
      },
      {
        'rank': 5,
        'title': '王牌大高手',
        'color': Color(0xff8f8f8f),
        'count': 23663,
      }
    ];

    return Column(
      children: <Widget>[
        Column(
          children: [
            //   百度小说榜
            ...baiduList.map((v) {
              return Item.Item(item: v);
            }).toList(),
            // 男生热门榜
            ...manList.map((v) {
              return Item.Item(item: v);
            }).toList(),
          ],
        )
      ],
    );
  }
}

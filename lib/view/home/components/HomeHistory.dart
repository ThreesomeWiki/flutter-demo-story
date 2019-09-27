import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeItem.dart' as HomeItem;
import './HomeItemRow.dart' as HomeItemRow;

class HomeHistory extends StatefulWidget {
  static String pageName = '科幻历史';
  @override
  _HomeHistory createState() => _HomeHistory();
}

class _HomeHistory extends State<HomeHistory> {
  // 渲染列表
  renderList() {
    const list = [
      {
        'title': '[末世危机]杀一是为罪：屠万是为雄',
      },
      {
        'title': '[穿越历史]贴身管家：穿越回到前世',
      },
      {
        'title': '[穿越历史]求生之旅：回到原始社会',
      },
      {
        'title': '[传统武侠]为爱痴狂：公子风流倜傥',
      },
    ];
    return list.map((v) => HomeItemRow.HomeItemRow(item: v));
  }

  @override
  Widget build(BuildContext context) {
    const item = {
      'image':
          'https://static.zongheng.com/upload/s_image/cover/df/cf/dfcf151d7c1b7a13d26a51d148d4150a.jpeg',
      'title': '末世神权时代',
      'content': '一睁眼，齐维回到了十五年前，如梦如幻。',
      'user': '鳕鱼堡',
      'labs': ['末世危机', '连载'],
    };
    return HomeList.HomeList(
      title: '科幻历史',
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

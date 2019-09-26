import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeItem.dart' as HomeItem;

class HomeRecommend extends StatefulWidget {
  static String pageName = '编辑力荐';
  @override
  _HomeRecommend createState() => _HomeRecommend();
}

class _HomeRecommend extends State<HomeRecommend> {
  // 渲染列表
  renderList() {
    List lists = [
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/cb/d7/cbd7ff3e8cafb306f1a408e2fcc77ebb.jpeg',
        'title': '网游之奶个锤子',
        'content': '身为一个奶爸，队友全是战五渣，学医根本拯救不了世界，看我一锤子把这BOSS送回家！',
        'user': '何道长',
        'labs': ['虚拟网络', '连载'],
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/1e/43/1e43fd0f8018534c97b3ae00197b4a83.jpeg',
        'title': '本反派要改邪归正',
        'content': '穿成了小说里的炮灰反派，为了活命，她天天抱住男主大腿嘤嘤嘤，最后她成了女主角？！',
        'user': '墨妖岚',
        'labs': ['穿越时空', '连载'],
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/d3/97/d397fe757f16f1e56f4f21695470f758.jpeg',
        'title': '我就是富豪',
        'content': '负债累累前途渺茫时，沈浪突然接到一个电话：您有一笔百亿财产入账，请注意查收。',
        'user': '心怀希望',
        'labs': ['都市生活', '连载'],
      },
    ];
    return lists.map((v) => HomeItem.HomeItem(item: v)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return HomeList.HomeList(
        slotView: Column(
          children: renderList(),
        ),
        title: '编辑力荐');
  }
}

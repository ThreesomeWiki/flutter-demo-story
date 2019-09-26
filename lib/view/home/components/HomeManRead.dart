import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;

class HomeManRead extends StatefulWidget {
  @override
  _HomeManRead createState() => _HomeManRead();
}

class _HomeManRead extends State<HomeManRead> {
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
    ];
    return lists.map((v) => Text(v.title)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return HomeList.HomeList(
        slotView: Row(
          children: renderList(),
        ),
        title: '编辑立荐');
  }
}

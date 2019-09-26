import 'package:flutter/material.dart';
import './HomeList.dart' as HomeList;
import './HomeCard.dart' as HomeCard;

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
            'https://static.zongheng.com/upload/s_image/cover/d7/d7/d7d7be93d69a622b1f9fb5135c012dc9.jpeg',
        'title': '尘炉',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/shucheng/1/11245301192.jpg',
        'title': '绝世剑帝',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/5c/d6/5cd66aabdbdb5ef38f8c97b0dd6233c9.jpeg',
        'title': '贴身兵王俏总裁',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/66/76/6676e085d35ee558f33791bf411d653f.jpeg',
        'title': '银河修真传',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/b5/20/b5200b47a2ce27509ae75d423b5a681c.jpeg',
        'title': '古道混成',
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/ac/09/ac0990510da3144ad3bb2b5e0a0f7f82.jpeg',
        'title': '剑指诸天',
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
      title: '男生必读',
    );
  }
}

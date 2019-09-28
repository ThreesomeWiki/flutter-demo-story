import 'package:flutter/material.dart';
import '../home/components/HomeItem.dart' as HomeItem;

class Shelf extends StatefulWidget {
  @override
  _Shelf createState() => _Shelf();
}

class _Shelf extends State<Shelf> {
  static String pageName = '书架';

  renderCoin() {
    List kvs = [
      {'key': '剩余金币: ', 'value': '0纵横币'},
      {'key': '推荐票: ', 'value': '0张'},
      {'key': '月票: ', 'value': '0张'}
    ];
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: kvs
                  .map(
                    (v) => Container(
                      height: 24,
                      child: Row(
                        children: <Widget>[
                          Text(
                            v['key'],
                            style: TextStyle(color: Color(0xffa8a8a8)),
                          ),
                          Text(
                            v['value'],
                            style: TextStyle(color: Color(0xff4c4c4c)),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList()),
          Container(
            width: 55,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xffff4644),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '￥充值',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  renderNav() {
    List navs = [
      {'title': '我的书架', 'isActive': true},
      {'title': '最近阅读', 'isActive': false},
    ];
    return Row(
        children: navs
            .map((v) => Container(
                  height: 35,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xffdfdfdf)),
                      bottom: BorderSide(
                          width: v['isActive'] ? 3 : 1,
                          color: v['isActive']
                              ? Color(0xffff4644)
                              : Color(0xffdfdfdf)),
                      right: BorderSide(
                          width: v['title'] == '我的书架' ? 1 : 0,
                          color: Color(0xffdfdfdf)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        v['title'],
                        style: TextStyle(
                            color: v['isActive']
                                ? Color(0xffff4644)
                                : Colors.black),
                      ),
                    ],
                  ),
                ))
            .toList());
  }

  renderCount() {
    return Container(
      height: 33,
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1, color: Color(0xffdfdfdf)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('共收藏2本'),
          Text(
            '编辑',
            style: TextStyle(fontSize: 16, color: Color(0xffff4644)),
          ),
        ],
      ),
    );
  }

  renderItem() {
    List items = [
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/2015/11/1447743071882.jpg',
        'title': '大刁民',
        'content': '负债累累前途渺茫时，沈浪突然接到一个电话：您有一笔百亿财产入账，请注意查收。',
        'user': '仲星羽',
        'labs': ['都市生活', '连载'],
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/1e/43/1e43fd0f8018534c97b3ae00197b4a83.jpeg',
        'title': '本反派要改邪归正',
        'content': '穿成了小说里的炮灰反派，为了活命，她天天抱住男主大腿嘤嘤嘤，最后她成了女主角？！',
        'user': '墨妖岚',
        'labs': ['穿越时空', '连载'],
      },
    ];

    return Container(
      padding: EdgeInsets.only(left: 14, right: 14),
      color: Colors.white,
      child: Column(
        children: items.map((v) => HomeItem.HomeItem(item: v)).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: [
            renderCoin(),
            renderNav(),
            renderCount(),
            renderItem(),
          ],
        )
      ],
    );
  }
}

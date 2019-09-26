import 'package:flutter/material.dart';

class HomeRecommend extends StatefulWidget {
  @override
  _HomeRecommend createState() => _HomeRecommend();
}

class _HomeRecommend extends State<HomeRecommend> {
  @override
  Widget build(BuildContext context) {
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
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 20, right: 18, left: 18),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          // titles
          Row(
            children: <Widget>[
              Container(
                height: 18,
                width: 5,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(color: Color(0xffe95e56)),
              ),
              Text(
                '编辑立荐',
                style: TextStyle(fontSize: 17, color: Color(0xff333333)),
              ),
            ],
          ),
          // list
          ...lists.map(
            (v) => Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xffe6e6e6),
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Image.network(v['image']),
                    width: 65,
                    height: 86,
                  ),
                  Container(
                    height: 86,
                    width: 244,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              v['title'],
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff333333),
                              ),
                            ),
                            Text(
                              v['content'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff888888),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  v['user'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff888888),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  decoration: BoxDecoration(
                                    color: Color(0xffd1acd8),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Text(
                                    '虚拟网络',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  decoration: BoxDecoration(
                                    color: Color(0xffa1d0d2),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Text(
                                    '连载',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

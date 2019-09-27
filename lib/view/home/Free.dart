import 'package:flutter/material.dart';
import './components/HomeList.dart' as HomeList;
import './components/HomeItem.dart' as HomeItem;
import './components/HomeItemRow.dart' as HomeItemRow;

class Free extends StatefulWidget {
  static String pageName = '免费专区';
  @override
  _Free createState() => _Free();
}

class _Free extends State<Free> {
  @override
  Widget build(BuildContext context) {
    List todayFree = [
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/cb/d7/cbd7ff3e8cafb306f1a408e2fcc77ebb.jpeg',
        'title': '万古第一杀神',
        'content': '地球最强杀手魂穿异世，以微末之躯崛起，追寻那缥缈巅峰，成为古往今来最牛逼的杀神。',
        'user': '执笔天涯_红薯网',
        'labs': ['西方玄幻', '连载'],
      },
      {
        'image':
            'https://static.zongheng.com/upload/s_image/cover/shucheng/34/33484245.jpg',
        'title': '弃女轻狂：毒妃狠嚣张',
        'content': '全能特工一朝穿越，却险遭亲娘毒手，她一声冷笑，收萌宠，收煞神，走上人生巅峰。',
        'user': '七葵_魔情中文网_245',
        'labs': ['历史传奇', '连载'],
      },
    ];
    Map freeBook = {
      'image':
          'https://static.zongheng.com/upload/s_image/cover/17/51/1751b510f95aba541d0051f664739bf1.png',
      'title': '一笔论江湖',
      'content': '来自神秘东方的纸上游戏，你以为是人在戏中游，其实是人在做天在看，每一个图纸外的游戏者，都是试图改变天道轮回的渺小存在',
      'user': '左足',
      'labs': ['新派武侠', '连载'],
    };
    List freeBookList = [
      {'title': '[异世大陆]九星召唤师：少年闯异界'},
      {'title': '[探险异闻]普通高中生：探寻阴阳界'},
      {'title': '[豪门总裁]豪门虐恋：总裁的心尖宠'},
      {'title': '[原生幻想]穿越变成蛇：收复哥布林'},
    ];
    Map newBook = {
      'image':
          'https://static.zongheng.com/upload/s_image/cover/14/23/1423f06ee4780f66c7d156305a5c34b6.jpeg',
      'title': '凶兽异闻录',
      'content': '这是一场凶与巫的战斗，在光芒与温暖并存的深蓝世界，一个世间最终极的力量即将孕育而生。',
      'user': '静水深远',
      'labs': ['异术超能', '连载'],
    };
    List newBookList = [
      {'title': '[东方玄幻]一剑帝临：世间混乱无止'},
      {'title': '[灵异神怪]贫道小天师：拳打九霄外'},
      {'title': '[白领职场]月光总裁：重逢五年之后'},
      {'title': '[东方玄幻]九转炼天诀：被命运折磨'},
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0XFF333333),
          title: Text('免费专区'),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // 今日限免
            HomeList.HomeList(
              title: '今日限免',
              titleColor: Color(0xffe95e57),
              slotView: Column(
                children:
                    todayFree.map((v) => HomeItem.HomeItem(item: v)).toList(),
              ),
            ),
            // 免费品书
            HomeList.HomeList(
              title: '免费品书',
              slotView: Column(
                children: <Widget>[
                  HomeItem.HomeItem(
                    item: freeBook,
                  ),
                  ...freeBookList.map((v) => HomeItemRow.HomeItemRow(item: v))
                ],
              ),
            ),
            // 新书速递
            HomeList.HomeList(
              title: '免费品书',
              slotView: Column(
                children: <Widget>[
                  HomeItem.HomeItem(
                    item: newBook,
                  ),
                  ...newBookList.map((v) => HomeItemRow.HomeItemRow(item: v))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

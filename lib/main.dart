import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import './utils/SafeMap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "hellowworld",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String activeNav = '首页';
  @override
  Widget build(BuildContext context) {
    const navText = ['首页', '分类', '排行', '书架'];
    var lists = [
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: AppBar(
          backgroundColor: Color(0XFFF5F5F5),
          elevation: 0,
          title: Container(
            height: 44,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '纵横中文网',
                  style: TextStyle(
                    color: Color(0XFF666666),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0XFF333333),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: navText
                    .map(
                      (v) => Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: activeNav == v
                              ? Color(0xff454545)
                              : Color(0xff333333),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              v,
                              style: TextStyle(
                                  color: activeNav == v
                                      ? Color(0xfff2f2f2)
                                      : Color(0Xffa1a1a1)),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              height: 140,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  const list = [
                    'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-1.jpg',
                    'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-2.jpg',
                    'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-3.jpg',
                    'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-4.jpg',
                  ];
                  return new Image.network(
                    list[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
                itemHeight: 140,
                pagination: new SwiperPagination(
                  alignment: Alignment.bottomRight,
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.black54,
                    activeColor: Color(0XFFe95e57),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, right: 5, bottom: 10, left: 5),
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xffe6e6e6),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 165,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff7297c1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/icon/book-white.png',
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          '免费专区',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 165,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffd4b8d6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/icon/shoe-white.png',
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          '女频精选',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff333333)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          padding: EdgeInsets.only(
                                              left: 2, right: 2),
                                          decoration: BoxDecoration(
                                            color: Color(0xffd1acd8),
                                            borderRadius:
                                                BorderRadius.circular(3),
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
                                          padding: EdgeInsets.only(
                                              left: 2, right: 2),
                                          decoration: BoxDecoration(
                                            color: Color(0xffa1d0d2),
                                            borderRadius:
                                                BorderRadius.circular(3),
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
            ),
          ],
        ),
      ),
    );
  }
}

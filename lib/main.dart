import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
              margin: EdgeInsets.only(bottom: 10.4),
              padding: EdgeInsets.only(top: 20.8, right: 18.75, left: 18.75),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 18.6,
                        width: 5,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(color: Color(0xffe95e56)),
                      ),
                      Text('编辑立荐'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

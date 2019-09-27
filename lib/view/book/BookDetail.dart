import 'package:flutter/material.dart';
import './components/Lab.dart' as Lab;
import './components/LabTitle.dart' as LabTitle;

class BookDetail extends StatefulWidget {
  static String pageName = '小说详情页';
  @override
  _BookDetail createState() => _BookDetail();
}

class _BookDetail extends State<BookDetail> {
  // 作者详情
  renderUserDetail() {
    return Container(
      padding: EdgeInsets.only(top: 15, right: 7, bottom: 5, left: 7),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 98,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      'https://static.zongheng.com/upload/s_image/cover/74/29/7429de6d990a17c2420f87f617e454a5.jpeg',
                      width: 74,
                      height: 98,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '婚爱迷途',
                            style: TextStyle(
                              color: Color(0xff303030),
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '作者: ',
                                style: TextStyle(
                                  color: Color(0xffaaaaaa),
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '帕三绝',
                                style: TextStyle(
                                  color: Color(0xff303030),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '分类: ',
                                style: TextStyle(
                                  color: Color(0xffaaaaaa),
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '恋爱家庭',
                                style: TextStyle(
                                  color: Color(0xff303030),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '字数: ',
                                style: TextStyle(
                                  color: Color(0xffaaaaaa),
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '1328247',
                                style: TextStyle(
                                  color: Color(0xff303030),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '已有: ',
                                style: TextStyle(
                                  color: Color(0xffaaaaaa),
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '11318人次 ',
                                style: TextStyle(
                                  color: Color(0xff303030),
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '读过此书',
                                style: TextStyle(
                                  color: Color(0xffaaaaaa),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 56,
                height: 25,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xffff4643),
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '加书架',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffff4643),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 37,
            decoration: BoxDecoration(
              color: Color(0xffb33836),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '立即阅读',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 20,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color(0xffff4643),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '最新',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffff4643),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '第431章 底线',
                      style: TextStyle(
                        color: Color(0xff4c4c4c),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  '4小时前',
                  style: TextStyle(
                    color: Color(0xffa8a8a8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 渲染广告详情
  renderAd() {
    return Image.network(
      'https://yun.tuitiger.com/mami-media/img/ldn23wb0w7.gif',
      height: 56,
      width: 360,
    );
  }

  // 书籍详情
  renderBookDetail() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.only(top: 11, left: 8, right: 8, bottom: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 8,
                height: 14,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                    color: Color(0xff5e5e5e),
                    borderRadius: BorderRadius.circular(2)),
              ),
              Text(
                '作品简介',
                style: TextStyle(fontSize: 14, color: Color(0xff4c4c4c)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              '被老公出卖，遭闺蜜背叛，腹黑职场却掀情海风波，骨肉反目，亲情怠危，小女子浮沉求生，究竟能不能敌得过命运这双翻云覆雨手？',
              style: TextStyle(color: Color(0xff5e5e5e), fontSize: 13),
            ),
          ),
          Row(
            children: <Widget>[
              Text('标签：'),
              Container(
                width: 38,
                height: 22,
                decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    border: Border.all(
                      width: 1,
                      color: Color(0xffdfdfdf),
                    ),
                    borderRadius: BorderRadius.circular(2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '燃情',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff4c4c4c),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 38,
                height: 22,
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    border: Border.all(
                      width: 1,
                      color: Color(0xffdfdfdf),
                    ),
                    borderRadius: BorderRadius.circular(2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '重生',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff4c4c4c),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 支持本书

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0XFF333333),
          title: Text('本书详情'),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            renderUserDetail(),
            renderAd(),
            renderBookDetail(),
            Container(
              child: Column(
                children: <Widget>[
                  LabTitle.LabTitle(title: '支持本书'),
                  Lab.Lab(left: '投张推荐票来表达你对本书的态度吧!', right: '投票推荐'),
                  Lab.Lab(left: '更多种方式为作者捧场!!', right: '更多捧场'),
                  LabTitle.LabTitle(title: '作品目录'),
                  Lab.Lab(left: '第001章  生变', go: true),
                  Lab.Lab(left: '第002章  初见', go: true),
                  Lab.Lab(left: '第003章  风波', go: true),
                  Lab.Lab(left: '第003章  意外', go: true),
                  Container(
                    color: Colors.white,
                    padding:
                        EdgeInsets.only(top: 15, right: 8, bottom: 15, left: 8),
                    child: Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffdfdfdf),
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '进入作品目录 查看更多',
                            style: TextStyle(fontSize: 13),
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

import 'package:flutter/material.dart';

class HomeItem extends StatefulWidget {
  static String pageName = '首页卡片1';
  final Map item;
  HomeItem({this.item}) : super();
  @override
  _HomeItem createState() => _HomeItem();
}

class _HomeItem extends State<HomeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.network(widget.item['image']),
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
                      widget.item['title'],
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff333333),
                      ),
                    ),
                    Text(
                      widget.item['content'],
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
                          widget.item['user'],
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
    );
  }
}

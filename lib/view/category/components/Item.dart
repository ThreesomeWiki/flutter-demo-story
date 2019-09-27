import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String title;
  final List list;
  Item({this.title, this.list}) : super();
  @override
  _Item createState() => _Item();
}

class _Item extends State<Item> {
  static String pageName = '分类Item';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 360,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Container(
            height: 36,
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 8,
                      height: 14,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        color: Color(0xffff4643),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 14, color: Color(0XFF4c4c4c)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.network(
                      'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/icon/book-black.png',
                      width: 16,
                      height: 16,
                    ),
                    Text(
                      '查看全部',
                      style: TextStyle(fontSize: 14, color: Color(0XFF4c4c4c)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            child: Wrap(
              children: widget.list.map((v) {
                return Container(
                  width: 90,
                  height: 41,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color(0xffe9e9e9),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 1,
                                color: Color(0xffe9e9e9),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                v,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0XFF4c4c4c),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

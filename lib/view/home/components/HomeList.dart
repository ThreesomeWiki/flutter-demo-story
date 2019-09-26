import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  final Widget slotView; // 插入view
  final String title; // title
  final bool sanjiao; // 是否是三角形
  HomeList({this.slotView, this.title, this.sanjiao = false}) : super();
  @override
  _HomeList createState() => _HomeList();
}

class _HomeList extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 20, right: 18, left: 18),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              !widget.sanjiao
                  ? Container(
                      height: 18,
                      width: 5,
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(color: Color(0xffe95e56)),
                    )
                  : Image.network(
                      'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/icon/sanjiao-red.png',
                      width: 15,
                      height: 15,
                    ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 17, color: Color(0xff333333)),
              ),
            ],
          ),
          widget.slotView,
        ],
      ),
    );
  }
}

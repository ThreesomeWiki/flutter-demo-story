import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  static String pageName = '首页卡片';
  final int k;
  final Map v;
  HomeCard({this.k, this.v}) : super();
  @override
  _HomeCard createState() => _HomeCard();
}

class _HomeCard extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      margin: EdgeInsets.only(
        bottom: 18,
        left: widget.k % 3 == 0 ? 0 : 22,
        right: widget.k % 3 == 2 ? 0 : 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            widget.v['image'],
            width: 75,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 9),
            child: Text(
              widget.v['title'],
              style: TextStyle(
                color: Color(0xff555555),
                fontSize: 12,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

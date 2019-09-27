import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final Map item;
  Item({this.item}) : super();
  @override
  _Item createState() => _Item();
}

class _Item extends State<Item> {
  static String pageName = '排行ITEM';

  changeCategory() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 39,
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color:
            widget.item['isTitle'] != null ? Color(0xfff2f2f2) : Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xffdfdfdf),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              widget.item['isTitle'] != null
                  ? Container(
                      width: 8,
                      height: 14,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xff5e5e5e),
                      ),
                    )
                  : Container(
                      width: 18,
                      height: 18,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: widget.item['color'],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.item['rank'].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
              Text(
                widget.item['title'],
                style: TextStyle(
                  color: Color(0xff4c4c4c),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Text(
            widget.item['count'].toString(),
            style: TextStyle(
              color: Color(0xff8f8f8f),
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}

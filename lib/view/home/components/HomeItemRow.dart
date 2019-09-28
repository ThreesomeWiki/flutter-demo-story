import 'package:flutter/material.dart';
import '../../book/BookDetail.dart' as BookDetail;

class HomeItemRow extends StatefulWidget {
  static String pageName = '首页卡片2';
  final Map item;
  HomeItemRow({this.item}) : super();
  @override
  _HomeItemRow createState() => _HomeItemRow();
}

class _HomeItemRow extends State<HomeItemRow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BookDetail.BookDetail();
        }));
      },
      child: Container(
        width: 324,
        height: 46,
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
            Text(
              widget.item['title'],
              style: TextStyle(
                color: Color(0xff3333333),
                fontSize: 15,
              ),
            ),
            Image.network(
              'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/icon/right.png',
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

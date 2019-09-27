import 'package:flutter/material.dart';
import '../Free.dart' as Free;

class HomeCategory extends StatefulWidget {
  static String pageName = '分类';
  @override
  _HomeCategory createState() => _HomeCategory();
}

class _HomeCategory extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Free.Free();
              }));
            },
            child: Container(
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
    );
  }
}

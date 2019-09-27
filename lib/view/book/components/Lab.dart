import 'package:flutter/material.dart';

class Lab extends StatefulWidget {
  static String pageName = 'lab';
  final String left;
  final String right;
  final bool go;
  Lab({this.left = '', this.right = '', this.go = false}) : super();
  @override
  _Lab createState() => _Lab();
}

class _Lab extends State<Lab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
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
          Text(
            widget.left,
            style: TextStyle(color: Color(0xff4c4c4c), fontSize: 14),
          ),
          widget.go
              ? Image.network(
                  'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/icon/right.png',
                  width: 15,
                  height: 15,
                )
              : Text(
                  widget.right,
                  style: TextStyle(color: Color(0xff4c4c4c), fontSize: 12),
                ),
        ],
      ),
    );
  }
}

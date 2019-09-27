import 'package:flutter/material.dart';

class LabTitle extends StatefulWidget {
  static String pageName = 'lab title';
  final String title;
  LabTitle({this.title = ''}) : super();
  @override
  _LabTitle createState() => _LabTitle();
}

class _LabTitle extends State<LabTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: EdgeInsets.only(left: 8, right: 8),
      color: Color(0xfff2f2f2),
      child: Row(
        children: <Widget>[
          Container(
            width: 8,
            height: 14,
            margin: EdgeInsets.only(right: 7),
            decoration: BoxDecoration(
              color: Color(0xff5e5e5e),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text(widget.title),
        ],
      ),
    );
  }
}

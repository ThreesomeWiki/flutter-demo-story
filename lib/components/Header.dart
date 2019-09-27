import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  static String pageName = '头部';
  final String title;
  final textColor;
  Header({this.title, this.textColor}) : super();
  @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.title,
            style: TextStyle(
              color: widget.textColor == null
                  ? Color(0XFF666666)
                  : widget.textColor,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

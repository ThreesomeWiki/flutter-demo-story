import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final String title;
  Header({this.title}) : super();
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
              color: Color(0XFF666666),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Navs extends StatefulWidget {
  final String activeNav;
  Navs({this.activeNav}) : super();
  @override
  _Navs createState() => _Navs();
}

class _Navs extends State<Navs> {
  @override
  Widget build(BuildContext context) {
    List navText = ['首页', '分类', '排行', '书架'];
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Color(0XFF333333),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: navText
            .map(
              (v) => Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: widget.activeNav == v
                      ? Color(0xff454545)
                      : Color(0xff333333),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      v,
                      style: TextStyle(
                          color: widget.activeNav == v
                              ? Color(0xfff2f2f2)
                              : Color(0Xffa1a1a1)),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

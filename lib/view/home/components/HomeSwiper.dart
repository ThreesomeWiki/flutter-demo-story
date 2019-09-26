import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeSwiper extends StatefulWidget {
  @override
  _HomeSwiper createState() => _HomeSwiper();
}

class _HomeSwiper extends State<HomeSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          const list = [
            'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-1.jpg',
            'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-2.jpg',
            'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-3.jpg',
            'http://familyweb.oss-cn-shanghai.aliyuncs.com/zongheng/home/banner/banner-4.jpg',
          ];
          return new Image.network(
            list[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        itemHeight: 140,
        pagination: new SwiperPagination(
          alignment: Alignment.bottomRight,
          builder: DotSwiperPaginationBuilder(
            color: Colors.black54,
            activeColor: Color(0XFFe95e57),
          ),
        ),
      ),
    );
  }
}

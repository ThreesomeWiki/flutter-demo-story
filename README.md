## Start

flutter run

## 介绍

仿纵横中文网[WAP](https://m.zongheng.com/h5/index?h5=1)页面

#### 主要工作

-   路由

-   界面布局

-   组件拆分

#### 组件

-   Container：背景色，padding，margin 布局，border,borderRadius

-   Row：子组件横向布局

-   Column：子组件纵向布局

-   Text : 文字展示

-   Image： 图片展示

-   SingleChildScrollView ：超出滚动

-   [flutter_swiper](https://github.com/best-flutter/flutter_swiper) ：轮播组件

## 采坑

-   每个`Scaffold`组件的`body`属性需要使用`Scaffold`包裹，否则超出警告

-   每个`activity`界面，按照`320pt` 切分布局

-   `flutter_swiper`，需要手动设置`itemHeight`属性，`itemCount` 超过 3，会报错

-   组件属性传递，事件传递。(与 React 非常相似，可以参考相关代码)

-   三方依赖注入：更改`pubspec.yaml`文件`dependencies`

-   Dart update 一直失败。

## 代码示例

#### 代码结构

![代码结构](https://upload-images.jianshu.io/upload_images/8332715-ed9a64c4f90512ff.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

-   main.dart：入口文件

-   MainScreen: 入口主页

-   home/book 等：各个模块组件

-   components: 全局模块组件

-   utils: 公共方法

#### 主页

![主页](https://upload-images.jianshu.io/upload_images/8332715-5b15ccc59888b9c4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
由各个自定义组件构成

#### 组件详情

```
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
```

#### 组件调用

![组件调用](https://upload-images.jianshu.io/upload_images/8332715-1f4e5e8e729f97fd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 添加三方依赖

![添加三方依赖](https://upload-images.jianshu.io/upload_images/8332715-3ce56b6ba451264f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

修改`pubspec.yaml`文件，vscode 自动下载依赖

#### 下一步

当前页面都是静态数据，需要爬虫接口支持，目前已在进行中。。。。

## 界面展示

<p>
<image src='./md/home.jpeg' width=200/> <image src='./md/home-2.jpeg' width=200/> <image src='./md/home-3.jpeg' width=200/> <image src='./md/category.jpeg' width=200/> <image src='./md/rank.jpeg' width=200/> <image src='./md/shelf.jpeg' width=200/> <image src='./md/book-detail.jpeg' width=200/> <image src='./md/free.jpeg' width=200/>
</p>

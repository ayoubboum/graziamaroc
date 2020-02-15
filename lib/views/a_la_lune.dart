import 'dart:async';

import 'package:fltr_graziamaroc/model/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Alalune extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AlaluneState();
}

class _AlaluneState extends State<Alalune> {
  List<Article> _listArticles;
  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listArticles = [
      Article('Un amour de montre by Fendi', 'assets/imgs/slide_one.jpg'),
      Article('Escapade romantique à Mazagan', 'assets/imgs/slide_two.jpg'),
      Article('La robe dont tout le monde parle encore…',
          'assets/imgs/slide_three.jpg'),
      Article('Un amour de montre by Fendi', 'assets/imgs/slide_one.jpg'),
      Article('Escapade romantique à Mazagan', 'assets/imgs/slide_two.jpg'),
      Article('La robe dont tout le monde parle encore…',
          'assets/imgs/slide_three.jpg'),
      Article('Un amour de montre by Fendi', 'assets/imgs/slide_one.jpg'),
      Article('Escapade romantique à Mazagan', 'assets/imgs/slide_two.jpg'),
      Article('La robe dont tout le monde parle encore…',
          'assets/imgs/slide_three.jpg'),
    ];
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < _listArticles.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients)
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          alalune(context, _listArticles, _pageController),
          articles(context, _listArticles),
        ],
      ),
    );
  }
}

Widget alalune(BuildContext context, List<Article> _listArticles,
    PageController _pageController) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, '/detail');
    },
    child: Container(
      height: ScreenUtil().setWidth(500.0),
      child: PageView.builder(
        controller: _pageController,
        itemCount: _listArticles.length,
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,

        itemBuilder: (context, index) => Stack(
          children: <Widget>[
            Image.asset(
              _listArticles[index].image,
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: ScreenUtil().setWidth(500.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFFFFFF).withOpacity(0.2),
                    Color(0xFF212121).withOpacity(0.7),
                  ],
                  stops: [0.1, 1.0],
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 5.0,
              child: Column(
                children: <Widget>[
                  Text(
                    'NEWS MODE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: ScreenUtil().setWidth(36.0),
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    _listArticles[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: ScreenUtil().setWidth(46.0),
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget articles(BuildContext context, List<Article> _listArticles) {
  return ListView.builder(
    itemCount: _listArticles.length,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) => InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: EdgeInsets.only(
            top: ScreenUtil().setWidth(16.0),
            right: ScreenUtil().setWidth(16.0),
            left: ScreenUtil().setWidth(16.0),
            bottom: 4.0),
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.05),
              spreadRadius: 1.5,
              blurRadius: ScreenUtil().setWidth(16.0),
              offset: Offset(0.0, 0.0),
            ),
          ],
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(15.0),
          //   bottomRight: Radius.circular(15.0),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.asset(
                _listArticles[index].image,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(10.0),
                    bottom: ScreenUtil().setWidth(10.0),
                    top: ScreenUtil().setWidth(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        _listArticles[index].title,
                        style: TextStyle(
                            color: Color(0xFFF6C232),
                            fontSize: ScreenUtil().setWidth(30.0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Labore id elit occaecat proident. Do adipisicing consectetur sunt laborum ex. Ex anim aliquip incididunt aute ut quis exercitation est. Dolor et pariatur proident nostrud ut reprehenderit mollit enim Lorem Lorem ullamco enim ad cillum. Amet minim ex nisi cillum ex. Veniam mollit deserunt anim commodo consectetur mollit dolore et est. Et cupidatat nostrud voluptate ipsum dolor velit magna cupidatat.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
